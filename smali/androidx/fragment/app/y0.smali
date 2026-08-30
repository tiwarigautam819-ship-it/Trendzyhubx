###### Class androidx.fragment.app.y0 (androidx.fragment.app.y0)
.class public abstract Landroidx/fragment/app/y0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final A:Landroidx/fragment/app/r0;

.field public final B:Le5/e;

.field public C:Ld/g;

.field public D:Ld/g;

.field public E:Ld/g;

.field public F:Ljava/util/ArrayDeque;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Ljava/util/ArrayList;

.field public M:Ljava/util/ArrayList;

.field public N:Ljava/util/ArrayList;

.field public O:Landroidx/fragment/app/c1;

.field public final P:Landroidx/fragment/app/p;

.field public final a:Ljava/util/ArrayList;

.field public b:Z

.field public final c:Lcom/google/firebase/messaging/y;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public final f:Landroidx/fragment/app/m0;

.field public g:Lb/i0;

.field public h:Landroidx/fragment/app/a;

.field public i:Z

.field public final j:Landroidx/fragment/app/p0;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/Map;

.field public final n:Ljava/util/ArrayList;

.field public final o:Lcom/google/android/gms/internal/measurement/y4;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final q:Landroidx/fragment/app/n0;

.field public final r:Landroidx/fragment/app/n0;

.field public final s:Landroidx/fragment/app/n0;

.field public final t:Landroidx/fragment/app/n0;

.field public final u:Landroidx/fragment/app/q0;

.field public v:I

.field public w:Landroidx/fragment/app/g0;

.field public x:Lh8/b;

.field public y:Landroidx/fragment/app/c0;

.field public z:Landroidx/fragment/app/c0;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Lcom/google/firebase/messaging/y;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/y;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Landroidx/fragment/app/m0;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Landroidx/fragment/app/m0;-><init>(Landroidx/fragment/app/y0;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/fragment/app/y0;->f:Landroidx/fragment/app/m0;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->i:Z

    .line 38
    .line 39
    new-instance v0, Landroidx/fragment/app/p0;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Landroidx/fragment/app/p0;-><init>(Landroidx/fragment/app/y0;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Landroidx/fragment/app/y0;->j:Landroidx/fragment/app/p0;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Landroidx/fragment/app/y0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Landroidx/fragment/app/y0;->l:Ljava/util/Map;

    .line 63
    .line 64
    new-instance v0, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Landroidx/fragment/app/y0;->m:Ljava/util/Map;

    .line 74
    .line 75
    new-instance v0, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Landroidx/fragment/app/y0;->n:Ljava/util/ArrayList;

    .line 89
    .line 90
    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Landroidx/fragment/app/y0;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 96
    .line 97
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Landroidx/fragment/app/y0;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    .line 104
    new-instance v0, Landroidx/fragment/app/n0;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/n0;-><init>(Landroidx/fragment/app/y0;I)V

    .line 108
    .line 109
    .line 110
    iput-object v0, p0, Landroidx/fragment/app/y0;->q:Landroidx/fragment/app/n0;

    .line 111
    .line 112
    new-instance v0, Landroidx/fragment/app/n0;

    .line 113
    .line 114
    const/4 v1, 0x1

    .line 115
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/n0;-><init>(Landroidx/fragment/app/y0;I)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Landroidx/fragment/app/y0;->r:Landroidx/fragment/app/n0;

    .line 119
    .line 120
    new-instance v0, Landroidx/fragment/app/n0;

    .line 121
    .line 122
    const/4 v1, 0x2

    .line 123
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/n0;-><init>(Landroidx/fragment/app/y0;I)V

    .line 124
    .line 125
    .line 126
    iput-object v0, p0, Landroidx/fragment/app/y0;->s:Landroidx/fragment/app/n0;

    .line 127
    .line 128
    new-instance v0, Landroidx/fragment/app/n0;

    .line 129
    .line 130
    const/4 v1, 0x3

    .line 131
    invoke-direct {v0, p0, v1}, Landroidx/fragment/app/n0;-><init>(Landroidx/fragment/app/y0;I)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Landroidx/fragment/app/y0;->t:Landroidx/fragment/app/n0;

    .line 135
    .line 136
    new-instance v0, Landroidx/fragment/app/q0;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Landroidx/fragment/app/q0;-><init>(Landroidx/fragment/app/y0;)V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Landroidx/fragment/app/y0;->u:Landroidx/fragment/app/q0;

    .line 142
    .line 143
    const/4 v0, -0x1

    .line 144
    iput v0, p0, Landroidx/fragment/app/y0;->v:I

    .line 145
    .line 146
    new-instance v0, Landroidx/fragment/app/r0;

    .line 147
    .line 148
    invoke-direct {v0, p0}, Landroidx/fragment/app/r0;-><init>(Landroidx/fragment/app/y0;)V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Landroidx/fragment/app/y0;->A:Landroidx/fragment/app/r0;

    .line 152
    .line 153
    new-instance v0, Le5/e;

    .line 154
    .line 155
    const/4 v1, 0x1

    .line 156
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 157
    .line 158
    .line 159
    iput-object v0, p0, Landroidx/fragment/app/y0;->B:Le5/e;

    .line 160
    .line 161
    new-instance v0, Ljava/util/ArrayDeque;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 164
    .line 165
    .line 166
    iput-object v0, p0, Landroidx/fragment/app/y0;->F:Ljava/util/ArrayDeque;

    .line 167
    .line 168
    new-instance v0, Landroidx/fragment/app/p;

    .line 169
    .line 170
    const/4 v1, 0x2

    .line 171
    invoke-direct {v0, v1, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iput-object v0, p0, Landroidx/fragment/app/y0;->P:Landroidx/fragment/app/p;

    .line 175
    .line 176
    return-void
.end method

.method public static E(Landroidx/fragment/app/a;)Ljava/util/HashSet;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    iget-object v2, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_24

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroidx/fragment/app/h1;

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 24
    .line 25
    if-eqz v2, :cond_21

    .line 26
    .line 27
    iget-boolean v3, p0, Landroidx/fragment/app/a;->g:Z

    .line 28
    .line 29
    if-eqz v3, :cond_21

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_6

    .line 37
    :cond_24
    return-object v0
.end method

.method public static J(I)Z
    .registers 2

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static K(Landroidx/fragment/app/c0;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/messaging/y;->s()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :cond_12
    if-ge v3, v0, :cond_26

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    check-cast v4, Landroidx/fragment/app/c0;

    .line 28
    .line 29
    if-eqz v4, :cond_22

    .line 30
    .line 31
    invoke-static {v4}, Landroidx/fragment/app/y0;->K(Landroidx/fragment/app/c0;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_22
    if-eqz v2, :cond_12

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :cond_26
    return v1
.end method

.method public static M(Landroidx/fragment/app/c0;)Z
    .registers 2

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    goto :goto_13

    .line 4
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->M:Z

    .line 5
    .line 6
    if-eqz v0, :cond_15

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 9
    .line 10
    if-eqz v0, :cond_13

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 13
    .line 14
    invoke-static {p0}, Landroidx/fragment/app/y0;->M(Landroidx/fragment/app/c0;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_15

    .line 19
    .line 20
    :cond_13
    :goto_13
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static N(Landroidx/fragment/app/c0;)Z
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    goto :goto_15

    .line 4
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_17

    .line 13
    .line 14
    iget-object p0, v0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/fragment/app/y0;->N(Landroidx/fragment/app/c0;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_17

    .line 21
    .line 22
    :goto_15
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_17
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public static b0(Landroidx/fragment/app/c0;)V
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1a

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "show: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->I:Z

    .line 28
    .line 29
    if-eqz v0, :cond_27

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->I:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/fragment/app/c0;->T:Z

    .line 35
    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/fragment/app/c0;->T:Z

    .line 39
    .line 40
    :cond_27
    return-void
.end method


# virtual methods
.method public final A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 12
    .line 13
    iget-object v6, v1, Landroidx/fragment/app/y0;->n:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    check-cast v7, Landroidx/fragment/app/a;

    .line 20
    .line 21
    iget-boolean v7, v7, Landroidx/fragment/app/a;->o:Z

    .line 22
    .line 23
    iget-object v8, v1, Landroidx/fragment/app/y0;->N:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-nez v8, :cond_22

    .line 26
    .line 27
    new-instance v8, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v8, v1, Landroidx/fragment/app/y0;->N:Ljava/util/ArrayList;

    .line 33
    .line 34
    goto :goto_25

    .line 35
    :cond_22
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    :goto_25
    iget-object v8, v1, Landroidx/fragment/app/y0;->N:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v5}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    iget-object v8, v1, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 48
    .line 49
    move v10, v3

    .line 50
    const/4 v11, 0x0

    .line 51
    :goto_32
    if-ge v10, v4, :cond_188

    .line 52
    .line 53
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    check-cast v14, Landroidx/fragment/app/a;

    .line 58
    .line 59
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    check-cast v15, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v15

    .line 69
    if-nez v15, :cond_139

    .line 70
    .line 71
    iget-object v15, v1, Landroidx/fragment/app/y0;->N:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v9, v14, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 74
    .line 75
    const/4 v12, 0x0

    .line 76
    :goto_4b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    if-ge v12, v13, :cond_132

    .line 81
    .line 82
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    check-cast v13, Landroidx/fragment/app/h1;

    .line 87
    .line 88
    move/from16 v19, v7

    .line 89
    .line 90
    iget v7, v13, Landroidx/fragment/app/h1;->a:I

    .line 91
    .line 92
    move/from16 v20, v10

    .line 93
    .line 94
    const/4 v10, 0x1

    .line 95
    if-eq v7, v10, :cond_120

    .line 96
    .line 97
    const/4 v10, 0x2

    .line 98
    move/from16 v21, v11

    .line 99
    .line 100
    const/16 v11, 0x9

    .line 101
    .line 102
    if-eq v7, v10, :cond_a1

    .line 103
    .line 104
    const/4 v10, 0x3

    .line 105
    if-eq v7, v10, :cond_8c

    .line 106
    .line 107
    const/4 v10, 0x6

    .line 108
    if-eq v7, v10, :cond_8c

    .line 109
    .line 110
    const/4 v10, 0x7

    .line 111
    if-eq v7, v10, :cond_89

    .line 112
    .line 113
    const/16 v10, 0x8

    .line 114
    .line 115
    if-eq v7, v10, :cond_75

    .line 116
    .line 117
    goto :goto_86

    .line 118
    :cond_75
    new-instance v7, Landroidx/fragment/app/h1;

    .line 119
    .line 120
    const/4 v10, 0x0

    .line 121
    invoke-direct {v7, v11, v8, v10}, Landroidx/fragment/app/h1;-><init>(ILandroidx/fragment/app/c0;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v12, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    const/4 v10, 0x1

    .line 128
    iput-boolean v10, v13, Landroidx/fragment/app/h1;->c:Z

    .line 129
    .line 130
    add-int/lit8 v12, v12, 0x1

    .line 131
    .line 132
    iget-object v7, v13, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 133
    .line 134
    move-object v8, v7

    .line 135
    :cond_86
    :goto_86
    const/4 v10, 0x1

    .line 136
    goto/16 :goto_127

    .line 137
    .line 138
    :cond_89
    const/4 v10, 0x1

    .line 139
    goto/16 :goto_122

    .line 140
    .line 141
    :cond_8c
    iget-object v7, v13, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 142
    .line 143
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    iget-object v7, v13, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 147
    .line 148
    if-ne v7, v8, :cond_86

    .line 149
    .line 150
    new-instance v8, Landroidx/fragment/app/h1;

    .line 151
    .line 152
    invoke-direct {v8, v11, v7}, Landroidx/fragment/app/h1;-><init>(ILandroidx/fragment/app/c0;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v9, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v12, v12, 0x1

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    goto :goto_86

    .line 162
    :cond_a1
    iget-object v7, v13, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 163
    .line 164
    iget v10, v7, Landroidx/fragment/app/c0;->G:I

    .line 165
    .line 166
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v22

    .line 170
    const/16 v18, 0x1

    .line 171
    .line 172
    add-int/lit8 v22, v22, -0x1

    .line 173
    .line 174
    move/from16 v11, v22

    .line 175
    .line 176
    const/16 v22, 0x0

    .line 177
    .line 178
    :goto_b1
    if-ltz v11, :cond_10f

    .line 179
    .line 180
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v24

    .line 184
    move/from16 v25, v11

    .line 185
    .line 186
    move-object/from16 v11, v24

    .line 187
    .line 188
    check-cast v11, Landroidx/fragment/app/c0;

    .line 189
    .line 190
    iget v3, v11, Landroidx/fragment/app/c0;->G:I

    .line 191
    .line 192
    if-ne v3, v10, :cond_105

    .line 193
    .line 194
    if-ne v11, v7, :cond_c9

    .line 195
    .line 196
    move/from16 v23, v10

    .line 197
    .line 198
    const/4 v10, 0x1

    .line 199
    const/16 v22, 0x1

    .line 200
    .line 201
    goto :goto_108

    .line 202
    :cond_c9
    if-ne v11, v8, :cond_dd

    .line 203
    .line 204
    new-instance v3, Landroidx/fragment/app/h1;

    .line 205
    .line 206
    move/from16 v23, v10

    .line 207
    .line 208
    const/4 v8, 0x0

    .line 209
    const/16 v10, 0x9

    .line 210
    .line 211
    invoke-direct {v3, v10, v11, v8}, Landroidx/fragment/app/h1;-><init>(ILandroidx/fragment/app/c0;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v12, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 v12, v12, 0x1

    .line 218
    .line 219
    move v3, v8

    .line 220
    const/4 v8, 0x0

    .line 221
    goto :goto_e2

    .line 222
    :cond_dd
    move/from16 v23, v10

    .line 223
    .line 224
    const/4 v3, 0x0

    .line 225
    const/16 v10, 0x9

    .line 226
    .line 227
    :goto_e2
    new-instance v10, Landroidx/fragment/app/h1;

    .line 228
    .line 229
    move-object/from16 v26, v8

    .line 230
    .line 231
    const/4 v8, 0x3

    .line 232
    invoke-direct {v10, v8, v11, v3}, Landroidx/fragment/app/h1;-><init>(ILandroidx/fragment/app/c0;I)V

    .line 233
    .line 234
    .line 235
    iget v3, v13, Landroidx/fragment/app/h1;->d:I

    .line 236
    .line 237
    iput v3, v10, Landroidx/fragment/app/h1;->d:I

    .line 238
    .line 239
    iget v3, v13, Landroidx/fragment/app/h1;->f:I

    .line 240
    .line 241
    iput v3, v10, Landroidx/fragment/app/h1;->f:I

    .line 242
    .line 243
    iget v3, v13, Landroidx/fragment/app/h1;->e:I

    .line 244
    .line 245
    iput v3, v10, Landroidx/fragment/app/h1;->e:I

    .line 246
    .line 247
    iget v3, v13, Landroidx/fragment/app/h1;->g:I

    .line 248
    .line 249
    iput v3, v10, Landroidx/fragment/app/h1;->g:I

    .line 250
    .line 251
    invoke-virtual {v9, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    const/4 v10, 0x1

    .line 258
    add-int/2addr v12, v10

    .line 259
    move-object/from16 v8, v26

    .line 260
    .line 261
    goto :goto_108

    .line 262
    :cond_105
    move/from16 v23, v10

    .line 263
    .line 264
    const/4 v10, 0x1

    .line 265
    :goto_108
    add-int/lit8 v11, v25, -0x1

    .line 266
    .line 267
    move/from16 v3, p3

    .line 268
    .line 269
    move/from16 v10, v23

    .line 270
    .line 271
    goto :goto_b1

    .line 272
    :cond_10f
    const/4 v10, 0x1

    .line 273
    if-eqz v22, :cond_118

    .line 274
    .line 275
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    add-int/lit8 v12, v12, -0x1

    .line 279
    .line 280
    goto :goto_127

    .line 281
    :cond_118
    iput v10, v13, Landroidx/fragment/app/h1;->a:I

    .line 282
    .line 283
    iput-boolean v10, v13, Landroidx/fragment/app/h1;->c:Z

    .line 284
    .line 285
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_127

    .line 289
    :cond_120
    move/from16 v21, v11

    .line 290
    .line 291
    :goto_122
    iget-object v3, v13, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 292
    .line 293
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    :goto_127
    add-int/2addr v12, v10

    .line 297
    move/from16 v3, p3

    .line 298
    .line 299
    move/from16 v7, v19

    .line 300
    .line 301
    move/from16 v10, v20

    .line 302
    .line 303
    move/from16 v11, v21

    .line 304
    .line 305
    goto/16 :goto_4b

    .line 306
    .line 307
    :cond_132
    move/from16 v19, v7

    .line 308
    .line 309
    move/from16 v20, v10

    .line 310
    .line 311
    move/from16 v21, v11

    .line 312
    .line 313
    goto :goto_176

    .line 314
    :cond_139
    move/from16 v19, v7

    .line 315
    .line 316
    move/from16 v20, v10

    .line 317
    .line 318
    move/from16 v21, v11

    .line 319
    .line 320
    const/4 v10, 0x1

    .line 321
    iget-object v3, v1, Landroidx/fragment/app/y0;->N:Ljava/util/ArrayList;

    .line 322
    .line 323
    iget-object v7, v14, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    sub-int/2addr v9, v10

    .line 330
    :goto_149
    if-ltz v9, :cond_176

    .line 331
    .line 332
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    check-cast v11, Landroidx/fragment/app/h1;

    .line 337
    .line 338
    iget v12, v11, Landroidx/fragment/app/h1;->a:I

    .line 339
    .line 340
    if-eq v12, v10, :cond_16c

    .line 341
    .line 342
    const/4 v10, 0x3

    .line 343
    if-eq v12, v10, :cond_166

    .line 344
    .line 345
    packed-switch v12, :pswitch_data_574

    .line 346
    .line 347
    .line 348
    goto :goto_172

    .line 349
    :pswitch_15c
    iget-object v12, v11, Landroidx/fragment/app/h1;->h:Landroidx/lifecycle/n;

    .line 350
    .line 351
    iput-object v12, v11, Landroidx/fragment/app/h1;->i:Landroidx/lifecycle/n;

    .line 352
    .line 353
    goto :goto_172

    .line 354
    :pswitch_161
    iget-object v8, v11, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 355
    .line 356
    goto :goto_172

    .line 357
    :pswitch_164
    const/4 v8, 0x0

    .line 358
    goto :goto_172

    .line 359
    :cond_166
    :pswitch_166
    iget-object v11, v11, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 360
    .line 361
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    goto :goto_172

    .line 365
    :cond_16c
    const/4 v10, 0x3

    .line 366
    :pswitch_16d
    iget-object v11, v11, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 367
    .line 368
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    :goto_172
    add-int/lit8 v9, v9, -0x1

    .line 372
    .line 373
    const/4 v10, 0x1

    .line 374
    goto :goto_149

    .line 375
    :cond_176
    :goto_176
    if-nez v21, :cond_17f

    .line 376
    .line 377
    iget-boolean v3, v14, Landroidx/fragment/app/a;->g:Z

    .line 378
    .line 379
    if-eqz v3, :cond_17d

    .line 380
    .line 381
    goto :goto_17f

    .line 382
    :cond_17d
    const/4 v11, 0x0

    .line 383
    goto :goto_180

    .line 384
    :cond_17f
    :goto_17f
    const/4 v11, 0x1

    .line 385
    :goto_180
    add-int/lit8 v10, v20, 0x1

    .line 386
    .line 387
    move/from16 v3, p3

    .line 388
    .line 389
    move/from16 v7, v19

    .line 390
    .line 391
    goto/16 :goto_32

    .line 392
    .line 393
    :cond_188
    move/from16 v19, v7

    .line 394
    .line 395
    move/from16 v21, v11

    .line 396
    .line 397
    iget-object v3, v1, Landroidx/fragment/app/y0;->N:Ljava/util/ArrayList;

    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 400
    .line 401
    .line 402
    if-nez v19, :cond_1c6

    .line 403
    .line 404
    iget v3, v1, Landroidx/fragment/app/y0;->v:I

    .line 405
    .line 406
    const/4 v10, 0x1

    .line 407
    if-lt v3, v10, :cond_1c6

    .line 408
    .line 409
    move/from16 v3, p3

    .line 410
    .line 411
    :goto_19a
    if-ge v3, v4, :cond_1c6

    .line 412
    .line 413
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    check-cast v7, Landroidx/fragment/app/a;

    .line 418
    .line 419
    iget-object v7, v7, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    const/4 v9, 0x0

    .line 426
    :cond_1a9
    :goto_1a9
    if-ge v9, v8, :cond_1c3

    .line 427
    .line 428
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    add-int/lit8 v9, v9, 0x1

    .line 433
    .line 434
    check-cast v10, Landroidx/fragment/app/h1;

    .line 435
    .line 436
    iget-object v10, v10, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 437
    .line 438
    if-eqz v10, :cond_1a9

    .line 439
    .line 440
    iget-object v11, v10, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 441
    .line 442
    if-eqz v11, :cond_1a9

    .line 443
    .line 444
    invoke-virtual {v1, v10}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    .line 445
    .line 446
    .line 447
    move-result-object v10

    .line 448
    invoke-virtual {v5, v10}, Lcom/google/firebase/messaging/y;->x(Landroidx/fragment/app/g1;)V

    .line 449
    .line 450
    .line 451
    goto :goto_1a9

    .line 452
    :cond_1c3
    add-int/lit8 v3, v3, 0x1

    .line 453
    .line 454
    goto :goto_19a

    .line 455
    :cond_1c6
    const-string v3, "Unknown cmd: "

    .line 456
    .line 457
    move/from16 v5, p3

    .line 458
    .line 459
    :goto_1ca
    const/4 v7, -0x1

    .line 460
    if-ge v5, v4, :cond_3b4

    .line 461
    .line 462
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    check-cast v8, Landroidx/fragment/app/a;

    .line 467
    .line 468
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    check-cast v9, Ljava/lang/Boolean;

    .line 473
    .line 474
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 475
    .line 476
    .line 477
    move-result v9

    .line 478
    if-eqz v9, :cond_2cf

    .line 479
    .line 480
    invoke-virtual {v8, v7}, Landroidx/fragment/app/a;->c(I)V

    .line 481
    .line 482
    .line 483
    iget-object v7, v8, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/y0;

    .line 484
    .line 485
    iget-object v9, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 488
    .line 489
    .line 490
    move-result v10

    .line 491
    const/4 v11, 0x1

    .line 492
    sub-int/2addr v10, v11

    .line 493
    :goto_1ec
    if-ltz v10, :cond_2cb

    .line 494
    .line 495
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 496
    .line 497
    .line 498
    move-result-object v12

    .line 499
    check-cast v12, Landroidx/fragment/app/h1;

    .line 500
    .line 501
    iget-object v13, v12, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 502
    .line 503
    if-eqz v13, :cond_235

    .line 504
    .line 505
    iget-object v14, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 506
    .line 507
    if-nez v14, :cond_1fd

    .line 508
    .line 509
    goto :goto_203

    .line 510
    :cond_1fd
    invoke-virtual {v13}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 511
    .line 512
    .line 513
    move-result-object v14

    .line 514
    iput-boolean v11, v14, Landroidx/fragment/app/z;->a:Z

    .line 515
    .line 516
    :goto_203
    iget v11, v8, Landroidx/fragment/app/a;->f:I

    .line 517
    .line 518
    const/16 v14, 0x2002

    .line 519
    .line 520
    const/16 v15, 0x1001

    .line 521
    .line 522
    if-eq v11, v15, :cond_21f

    .line 523
    .line 524
    if-eq v11, v14, :cond_21e

    .line 525
    .line 526
    const/16 v14, 0x1004

    .line 527
    .line 528
    const/16 v15, 0x2005

    .line 529
    .line 530
    if-eq v11, v15, :cond_21f

    .line 531
    .line 532
    const/16 v15, 0x1003

    .line 533
    .line 534
    if-eq v11, v15, :cond_21e

    .line 535
    .line 536
    if-eq v11, v14, :cond_21b

    .line 537
    .line 538
    const/4 v14, 0x0

    .line 539
    goto :goto_21f

    .line 540
    :cond_21b
    const/16 v14, 0x2005

    .line 541
    .line 542
    goto :goto_21f

    .line 543
    :cond_21e
    move v14, v15

    .line 544
    :cond_21f
    :goto_21f
    iget-object v11, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 545
    .line 546
    if-nez v11, :cond_226

    .line 547
    .line 548
    if-nez v14, :cond_226

    .line 549
    .line 550
    goto :goto_22d

    .line 551
    :cond_226
    invoke-virtual {v13}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 552
    .line 553
    .line 554
    iget-object v11, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 555
    .line 556
    iput v14, v11, Landroidx/fragment/app/z;->f:I

    .line 557
    .line 558
    :goto_22d
    invoke-virtual {v13}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 559
    .line 560
    .line 561
    iget-object v11, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 562
    .line 563
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    .line 565
    .line 566
    :cond_235
    iget v11, v12, Landroidx/fragment/app/h1;->a:I

    .line 567
    .line 568
    packed-switch v11, :pswitch_data_582

    .line 569
    .line 570
    .line 571
    :pswitch_23a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 572
    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iget v3, v12, Landroidx/fragment/app/h1;->a:I

    .line 579
    .line 580
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    throw v0

    .line 591
    :pswitch_24e
    iget-object v11, v12, Landroidx/fragment/app/h1;->h:Landroidx/lifecycle/n;

    .line 592
    .line 593
    invoke-virtual {v7, v13, v11}, Landroidx/fragment/app/y0;->Y(Landroidx/fragment/app/c0;Landroidx/lifecycle/n;)V

    .line 594
    .line 595
    .line 596
    :goto_253
    const/4 v11, 0x1

    .line 597
    goto/16 :goto_2c7

    .line 598
    .line 599
    :pswitch_256
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->Z(Landroidx/fragment/app/c0;)V

    .line 600
    .line 601
    .line 602
    goto :goto_253

    .line 603
    :pswitch_25a
    const/4 v11, 0x0

    .line 604
    invoke-virtual {v7, v11}, Landroidx/fragment/app/y0;->Z(Landroidx/fragment/app/c0;)V

    .line 605
    .line 606
    .line 607
    goto :goto_253

    .line 608
    :pswitch_25f
    iget v11, v12, Landroidx/fragment/app/h1;->d:I

    .line 609
    .line 610
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 611
    .line 612
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 613
    .line 614
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 615
    .line 616
    invoke-virtual {v13, v11, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 617
    .line 618
    .line 619
    const/4 v11, 0x1

    .line 620
    invoke-virtual {v7, v13, v11}, Landroidx/fragment/app/y0;->X(Landroidx/fragment/app/c0;Z)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->h(Landroidx/fragment/app/c0;)V

    .line 624
    .line 625
    .line 626
    goto :goto_253

    .line 627
    :pswitch_272
    iget v11, v12, Landroidx/fragment/app/h1;->d:I

    .line 628
    .line 629
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 630
    .line 631
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 632
    .line 633
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 634
    .line 635
    invoke-virtual {v13, v11, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->c(Landroidx/fragment/app/c0;)V

    .line 639
    .line 640
    .line 641
    goto :goto_253

    .line 642
    :pswitch_281
    iget v11, v12, Landroidx/fragment/app/h1;->d:I

    .line 643
    .line 644
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 645
    .line 646
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 647
    .line 648
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 649
    .line 650
    invoke-virtual {v13, v11, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 651
    .line 652
    .line 653
    const/4 v11, 0x1

    .line 654
    invoke-virtual {v7, v13, v11}, Landroidx/fragment/app/y0;->X(Landroidx/fragment/app/c0;Z)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->I(Landroidx/fragment/app/c0;)V

    .line 658
    .line 659
    .line 660
    goto :goto_253

    .line 661
    :pswitch_294
    iget v11, v12, Landroidx/fragment/app/h1;->d:I

    .line 662
    .line 663
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 664
    .line 665
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 666
    .line 667
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 668
    .line 669
    invoke-virtual {v13, v11, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    invoke-static {v13}, Landroidx/fragment/app/y0;->b0(Landroidx/fragment/app/c0;)V

    .line 676
    .line 677
    .line 678
    goto :goto_253

    .line 679
    :pswitch_2a6
    iget v11, v12, Landroidx/fragment/app/h1;->d:I

    .line 680
    .line 681
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 682
    .line 683
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 684
    .line 685
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 686
    .line 687
    invoke-virtual {v13, v11, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->a(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    .line 691
    .line 692
    .line 693
    goto :goto_253

    .line 694
    :pswitch_2b5
    iget v11, v12, Landroidx/fragment/app/h1;->d:I

    .line 695
    .line 696
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 697
    .line 698
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 699
    .line 700
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 701
    .line 702
    invoke-virtual {v13, v11, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 703
    .line 704
    .line 705
    const/4 v11, 0x1

    .line 706
    invoke-virtual {v7, v13, v11}, Landroidx/fragment/app/y0;->X(Landroidx/fragment/app/c0;Z)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->S(Landroidx/fragment/app/c0;)V

    .line 710
    .line 711
    .line 712
    :goto_2c7
    add-int/lit8 v10, v10, -0x1

    .line 713
    .line 714
    goto/16 :goto_1ec

    .line 715
    .line 716
    :cond_2cb
    move-object/from16 v17, v3

    .line 717
    .line 718
    goto/16 :goto_3ae

    .line 719
    .line 720
    :cond_2cf
    const/4 v11, 0x1

    .line 721
    invoke-virtual {v8, v11}, Landroidx/fragment/app/a;->c(I)V

    .line 722
    .line 723
    .line 724
    iget-object v7, v8, Landroidx/fragment/app/a;->q:Landroidx/fragment/app/y0;

    .line 725
    .line 726
    iget-object v9, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 727
    .line 728
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 729
    .line 730
    .line 731
    move-result v10

    .line 732
    const/4 v11, 0x0

    .line 733
    :goto_2dc
    if-ge v11, v10, :cond_2cb

    .line 734
    .line 735
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 736
    .line 737
    .line 738
    move-result-object v12

    .line 739
    check-cast v12, Landroidx/fragment/app/h1;

    .line 740
    .line 741
    iget-object v13, v12, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 742
    .line 743
    if-eqz v13, :cond_30c

    .line 744
    .line 745
    iget-object v14, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 746
    .line 747
    if-nez v14, :cond_2ed

    .line 748
    .line 749
    goto :goto_2f4

    .line 750
    :cond_2ed
    invoke-virtual {v13}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 751
    .line 752
    .line 753
    move-result-object v14

    .line 754
    const/4 v15, 0x0

    .line 755
    iput-boolean v15, v14, Landroidx/fragment/app/z;->a:Z

    .line 756
    .line 757
    :goto_2f4
    iget v14, v8, Landroidx/fragment/app/a;->f:I

    .line 758
    .line 759
    iget-object v15, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 760
    .line 761
    if-nez v15, :cond_2fd

    .line 762
    .line 763
    if-nez v14, :cond_2fd

    .line 764
    .line 765
    goto :goto_304

    .line 766
    :cond_2fd
    invoke-virtual {v13}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 767
    .line 768
    .line 769
    iget-object v15, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 770
    .line 771
    iput v14, v15, Landroidx/fragment/app/z;->f:I

    .line 772
    .line 773
    :goto_304
    invoke-virtual {v13}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 774
    .line 775
    .line 776
    iget-object v14, v13, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 777
    .line 778
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    .line 780
    .line 781
    :cond_30c
    iget v14, v12, Landroidx/fragment/app/h1;->a:I

    .line 782
    .line 783
    packed-switch v14, :pswitch_data_59a

    .line 784
    .line 785
    .line 786
    :pswitch_311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 787
    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    .line 789
    .line 790
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    iget v3, v12, Landroidx/fragment/app/h1;->a:I

    .line 794
    .line 795
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    throw v0

    .line 806
    :pswitch_325
    iget-object v12, v12, Landroidx/fragment/app/h1;->i:Landroidx/lifecycle/n;

    .line 807
    .line 808
    invoke-virtual {v7, v13, v12}, Landroidx/fragment/app/y0;->Y(Landroidx/fragment/app/c0;Landroidx/lifecycle/n;)V

    .line 809
    .line 810
    .line 811
    :goto_32a
    move-object/from16 v17, v3

    .line 812
    .line 813
    goto/16 :goto_3a8

    .line 814
    .line 815
    :pswitch_32e
    const/4 v12, 0x0

    .line 816
    invoke-virtual {v7, v12}, Landroidx/fragment/app/y0;->Z(Landroidx/fragment/app/c0;)V

    .line 817
    .line 818
    .line 819
    goto :goto_32a

    .line 820
    :pswitch_333
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->Z(Landroidx/fragment/app/c0;)V

    .line 821
    .line 822
    .line 823
    goto :goto_32a

    .line 824
    :pswitch_337
    iget v14, v12, Landroidx/fragment/app/h1;->d:I

    .line 825
    .line 826
    iget v15, v12, Landroidx/fragment/app/h1;->e:I

    .line 827
    .line 828
    move-object/from16 v17, v3

    .line 829
    .line 830
    iget v3, v12, Landroidx/fragment/app/h1;->f:I

    .line 831
    .line 832
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 833
    .line 834
    invoke-virtual {v13, v14, v15, v3, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 835
    .line 836
    .line 837
    const/4 v15, 0x0

    .line 838
    invoke-virtual {v7, v13, v15}, Landroidx/fragment/app/y0;->X(Landroidx/fragment/app/c0;Z)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->c(Landroidx/fragment/app/c0;)V

    .line 842
    .line 843
    .line 844
    goto :goto_3a8

    .line 845
    :pswitch_34c
    move-object/from16 v17, v3

    .line 846
    .line 847
    iget v3, v12, Landroidx/fragment/app/h1;->d:I

    .line 848
    .line 849
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 850
    .line 851
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 852
    .line 853
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 854
    .line 855
    invoke-virtual {v13, v3, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->h(Landroidx/fragment/app/c0;)V

    .line 859
    .line 860
    .line 861
    goto :goto_3a8

    .line 862
    :pswitch_35d
    move-object/from16 v17, v3

    .line 863
    .line 864
    iget v3, v12, Landroidx/fragment/app/h1;->d:I

    .line 865
    .line 866
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 867
    .line 868
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 869
    .line 870
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 871
    .line 872
    invoke-virtual {v13, v3, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 873
    .line 874
    .line 875
    const/4 v15, 0x0

    .line 876
    invoke-virtual {v7, v13, v15}, Landroidx/fragment/app/y0;->X(Landroidx/fragment/app/c0;Z)V

    .line 877
    .line 878
    .line 879
    invoke-static {v13}, Landroidx/fragment/app/y0;->b0(Landroidx/fragment/app/c0;)V

    .line 880
    .line 881
    .line 882
    goto :goto_3a8

    .line 883
    :pswitch_372
    move-object/from16 v17, v3

    .line 884
    .line 885
    iget v3, v12, Landroidx/fragment/app/h1;->d:I

    .line 886
    .line 887
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 888
    .line 889
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 890
    .line 891
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 892
    .line 893
    invoke-virtual {v13, v3, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->I(Landroidx/fragment/app/c0;)V

    .line 897
    .line 898
    .line 899
    goto :goto_3a8

    .line 900
    :pswitch_383
    move-object/from16 v17, v3

    .line 901
    .line 902
    iget v3, v12, Landroidx/fragment/app/h1;->d:I

    .line 903
    .line 904
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 905
    .line 906
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 907
    .line 908
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 909
    .line 910
    invoke-virtual {v13, v3, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 911
    .line 912
    .line 913
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->S(Landroidx/fragment/app/c0;)V

    .line 914
    .line 915
    .line 916
    goto :goto_3a8

    .line 917
    :pswitch_394
    move-object/from16 v17, v3

    .line 918
    .line 919
    iget v3, v12, Landroidx/fragment/app/h1;->d:I

    .line 920
    .line 921
    iget v14, v12, Landroidx/fragment/app/h1;->e:I

    .line 922
    .line 923
    iget v15, v12, Landroidx/fragment/app/h1;->f:I

    .line 924
    .line 925
    iget v12, v12, Landroidx/fragment/app/h1;->g:I

    .line 926
    .line 927
    invoke-virtual {v13, v3, v14, v15, v12}, Landroidx/fragment/app/c0;->H(IIII)V

    .line 928
    .line 929
    .line 930
    const/4 v15, 0x0

    .line 931
    invoke-virtual {v7, v13, v15}, Landroidx/fragment/app/y0;->X(Landroidx/fragment/app/c0;Z)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v7, v13}, Landroidx/fragment/app/y0;->a(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    .line 935
    .line 936
    .line 937
    :goto_3a8
    add-int/lit8 v11, v11, 0x1

    .line 938
    .line 939
    move-object/from16 v3, v17

    .line 940
    .line 941
    goto/16 :goto_2dc

    .line 942
    .line 943
    :goto_3ae
    add-int/lit8 v5, v5, 0x1

    .line 944
    .line 945
    move-object/from16 v3, v17

    .line 946
    .line 947
    goto/16 :goto_1ca

    .line 948
    .line 949
    :cond_3b4
    add-int/lit8 v3, v4, -0x1

    .line 950
    .line 951
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    check-cast v3, Ljava/lang/Boolean;

    .line 956
    .line 957
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 958
    .line 959
    .line 960
    move-result v3

    .line 961
    if-eqz v21, :cond_43a

    .line 962
    .line 963
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 964
    .line 965
    .line 966
    move-result v5

    .line 967
    if-nez v5, :cond_43a

    .line 968
    .line 969
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 970
    .line 971
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 975
    .line 976
    .line 977
    move-result v8

    .line 978
    const/4 v10, 0x0

    .line 979
    :goto_3d2
    if-ge v10, v8, :cond_3e4

    .line 980
    .line 981
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v9

    .line 985
    add-int/lit8 v10, v10, 0x1

    .line 986
    .line 987
    check-cast v9, Landroidx/fragment/app/a;

    .line 988
    .line 989
    invoke-static {v9}, Landroidx/fragment/app/y0;->E(Landroidx/fragment/app/a;)Ljava/util/HashSet;

    .line 990
    .line 991
    .line 992
    move-result-object v9

    .line 993
    invoke-interface {v5, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 994
    .line 995
    .line 996
    goto :goto_3d2

    .line 997
    :cond_3e4
    iget-object v8, v1, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 998
    .line 999
    if-nez v8, :cond_43a

    .line 1000
    .line 1001
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1002
    .line 1003
    .line 1004
    move-result v8

    .line 1005
    const/4 v10, 0x0

    .line 1006
    :goto_3ed
    if-ge v10, v8, :cond_411

    .line 1007
    .line 1008
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v9

    .line 1012
    add-int/lit8 v10, v10, 0x1

    .line 1013
    .line 1014
    if-nez v9, :cond_40b

    .line 1015
    .line 1016
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v9

    .line 1020
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v11

    .line 1024
    if-nez v11, :cond_402

    .line 1025
    .line 1026
    goto :goto_3ed

    .line 1027
    :cond_402
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    check-cast v0, Landroidx/fragment/app/c0;

    .line 1032
    .line 1033
    const/16 v16, 0x0

    .line 1034
    .line 1035
    throw v16

    .line 1036
    :cond_40b
    new-instance v0, Ljava/lang/ClassCastException;

    .line 1037
    .line 1038
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    throw v0

    .line 1042
    :cond_411
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1043
    .line 1044
    .line 1045
    move-result v8

    .line 1046
    const/4 v10, 0x0

    .line 1047
    :goto_416
    if-ge v10, v8, :cond_43a

    .line 1048
    .line 1049
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v9

    .line 1053
    add-int/lit8 v10, v10, 0x1

    .line 1054
    .line 1055
    if-nez v9, :cond_434

    .line 1056
    .line 1057
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v9

    .line 1061
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 1062
    .line 1063
    .line 1064
    move-result v11

    .line 1065
    if-nez v11, :cond_42b

    .line 1066
    .line 1067
    goto :goto_416

    .line 1068
    :cond_42b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    check-cast v0, Landroidx/fragment/app/c0;

    .line 1073
    .line 1074
    const/16 v16, 0x0

    .line 1075
    .line 1076
    throw v16

    .line 1077
    :cond_434
    new-instance v0, Ljava/lang/ClassCastException;

    .line 1078
    .line 1079
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    throw v0

    .line 1083
    :cond_43a
    move/from16 v5, p3

    .line 1084
    .line 1085
    :goto_43c
    if-ge v5, v4, :cond_488

    .line 1086
    .line 1087
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v8

    .line 1091
    check-cast v8, Landroidx/fragment/app/a;

    .line 1092
    .line 1093
    if-eqz v3, :cond_468

    .line 1094
    .line 1095
    iget-object v9, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1096
    .line 1097
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 1098
    .line 1099
    .line 1100
    move-result v9

    .line 1101
    const/16 v18, 0x1

    .line 1102
    .line 1103
    add-int/lit8 v9, v9, -0x1

    .line 1104
    .line 1105
    :goto_450
    if-ltz v9, :cond_485

    .line 1106
    .line 1107
    iget-object v10, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1108
    .line 1109
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v10

    .line 1113
    check-cast v10, Landroidx/fragment/app/h1;

    .line 1114
    .line 1115
    iget-object v10, v10, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 1116
    .line 1117
    if-eqz v10, :cond_465

    .line 1118
    .line 1119
    invoke-virtual {v1, v10}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v10

    .line 1123
    invoke-virtual {v10}, Landroidx/fragment/app/g1;->k()V

    .line 1124
    .line 1125
    .line 1126
    :cond_465
    add-int/lit8 v9, v9, -0x1

    .line 1127
    .line 1128
    goto :goto_450

    .line 1129
    :cond_468
    iget-object v8, v8, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 1130
    .line 1131
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1132
    .line 1133
    .line 1134
    move-result v9

    .line 1135
    const/4 v10, 0x0

    .line 1136
    :cond_46f
    :goto_46f
    if-ge v10, v9, :cond_485

    .line 1137
    .line 1138
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v11

    .line 1142
    add-int/lit8 v10, v10, 0x1

    .line 1143
    .line 1144
    check-cast v11, Landroidx/fragment/app/h1;

    .line 1145
    .line 1146
    iget-object v11, v11, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 1147
    .line 1148
    if-eqz v11, :cond_46f

    .line 1149
    .line 1150
    invoke-virtual {v1, v11}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v11

    .line 1154
    invoke-virtual {v11}, Landroidx/fragment/app/g1;->k()V

    .line 1155
    .line 1156
    .line 1157
    goto :goto_46f

    .line 1158
    :cond_485
    add-int/lit8 v5, v5, 0x1

    .line 1159
    .line 1160
    goto :goto_43c

    .line 1161
    :cond_488
    iget v5, v1, Landroidx/fragment/app/y0;->v:I

    .line 1162
    .line 1163
    const/4 v11, 0x1

    .line 1164
    invoke-virtual {v1, v5, v11}, Landroidx/fragment/app/y0;->O(IZ)V

    .line 1165
    .line 1166
    .line 1167
    move/from16 v5, p3

    .line 1168
    .line 1169
    invoke-virtual {v1, v0, v5, v4}, Landroidx/fragment/app/y0;->f(Ljava/util/ArrayList;II)Ljava/util/HashSet;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v8

    .line 1173
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v8

    .line 1177
    :goto_498
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1178
    .line 1179
    .line 1180
    move-result v9

    .line 1181
    if-eqz v9, :cond_51c

    .line 1182
    .line 1183
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v9

    .line 1187
    check-cast v9, Landroidx/fragment/app/o;

    .line 1188
    .line 1189
    iput-boolean v3, v9, Landroidx/fragment/app/o;->e:Z

    .line 1190
    .line 1191
    iget-object v10, v9, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 1192
    .line 1193
    monitor-enter v10

    .line 1194
    :try_start_4a9
    invoke-virtual {v9}, Landroidx/fragment/app/o;->l()V

    .line 1195
    .line 1196
    .line 1197
    iget-object v11, v9, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 1198
    .line 1199
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 1200
    .line 1201
    .line 1202
    move-result v12

    .line 1203
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v11

    .line 1207
    :goto_4b6
    invoke-interface {v11}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 1208
    .line 1209
    .line 1210
    move-result v12

    .line 1211
    if-eqz v12, :cond_50d

    .line 1212
    .line 1213
    invoke-interface {v11}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v12

    .line 1217
    move-object v13, v12

    .line 1218
    check-cast v13, Landroidx/fragment/app/l1;

    .line 1219
    .line 1220
    iget-object v14, v13, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 1221
    .line 1222
    iget-object v14, v14, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 1223
    .line 1224
    const-string v15, "operation.fragment.mView"

    .line 1225
    .line 1226
    invoke-static {v15, v14}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    .line 1230
    .line 1231
    .line 1232
    move-result v15

    .line 1233
    const/16 v17, 0x0

    .line 1234
    .line 1235
    cmpg-float v15, v15, v17

    .line 1236
    .line 1237
    const/4 v7, 0x4

    .line 1238
    if-nez v15, :cond_4de

    .line 1239
    .line 1240
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 1241
    .line 1242
    .line 1243
    move-result v15

    .line 1244
    if-nez v15, :cond_4de

    .line 1245
    .line 1246
    goto :goto_501

    .line 1247
    :cond_4de
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 1248
    .line 1249
    .line 1250
    move-result v14

    .line 1251
    if-eqz v14, :cond_500

    .line 1252
    .line 1253
    if-eq v14, v7, :cond_501

    .line 1254
    .line 1255
    const/16 v7, 0x8

    .line 1256
    .line 1257
    if-ne v14, v7, :cond_4ec

    .line 1258
    .line 1259
    const/4 v7, 0x3

    .line 1260
    goto :goto_501

    .line 1261
    :cond_4ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1262
    .line 1263
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1264
    .line 1265
    const-string v3, "Unknown visibility "

    .line 1266
    .line 1267
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v2

    .line 1277
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    throw v0

    .line 1281
    :cond_500
    const/4 v7, 0x2

    .line 1282
    :cond_501
    :goto_501
    iget v13, v13, Landroidx/fragment/app/l1;->a:I

    .line 1283
    .line 1284
    const/4 v14, 0x2

    .line 1285
    if-ne v13, v14, :cond_509

    .line 1286
    .line 1287
    if-eq v7, v14, :cond_509

    .line 1288
    .line 1289
    goto :goto_50e

    .line 1290
    :cond_509
    const/4 v7, -0x1

    .line 1291
    goto :goto_4b6

    .line 1292
    :catchall_50b
    move-exception v0

    .line 1293
    goto :goto_51a

    .line 1294
    :cond_50d
    const/4 v12, 0x0

    .line 1295
    :goto_50e
    check-cast v12, Landroidx/fragment/app/l1;

    .line 1296
    .line 1297
    const/4 v7, 0x0

    .line 1298
    iput-boolean v7, v9, Landroidx/fragment/app/o;->f:Z
    :try_end_513
    .catchall {:try_start_4a9 .. :try_end_513} :catchall_50b

    .line 1299
    .line 1300
    monitor-exit v10

    .line 1301
    invoke-virtual {v9}, Landroidx/fragment/app/o;->e()V

    .line 1302
    .line 1303
    .line 1304
    const/4 v7, -0x1

    .line 1305
    goto/16 :goto_498

    .line 1306
    .line 1307
    :goto_51a
    monitor-exit v10

    .line 1308
    throw v0

    .line 1309
    :cond_51c
    :goto_51c
    if-ge v5, v4, :cond_55c

    .line 1310
    .line 1311
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v3

    .line 1315
    check-cast v3, Landroidx/fragment/app/a;

    .line 1316
    .line 1317
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v7

    .line 1321
    check-cast v7, Ljava/lang/Boolean;

    .line 1322
    .line 1323
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1324
    .line 1325
    .line 1326
    move-result v7

    .line 1327
    if-eqz v7, :cond_538

    .line 1328
    .line 1329
    iget v7, v3, Landroidx/fragment/app/a;->s:I

    .line 1330
    .line 1331
    if-ltz v7, :cond_538

    .line 1332
    .line 1333
    const/4 v7, -0x1

    .line 1334
    iput v7, v3, Landroidx/fragment/app/a;->s:I

    .line 1335
    .line 1336
    goto :goto_539

    .line 1337
    :cond_538
    const/4 v7, -0x1

    .line 1338
    :goto_539
    iget-object v8, v3, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    .line 1339
    .line 1340
    if-eqz v8, :cond_558

    .line 1341
    .line 1342
    const/4 v10, 0x0

    .line 1343
    :goto_53e
    iget-object v8, v3, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    .line 1344
    .line 1345
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1346
    .line 1347
    .line 1348
    move-result v8

    .line 1349
    if-ge v10, v8, :cond_554

    .line 1350
    .line 1351
    iget-object v8, v3, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    .line 1352
    .line 1353
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v8

    .line 1357
    check-cast v8, Ljava/lang/Runnable;

    .line 1358
    .line 1359
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1360
    .line 1361
    .line 1362
    add-int/lit8 v10, v10, 0x1

    .line 1363
    .line 1364
    goto :goto_53e

    .line 1365
    :cond_554
    const/4 v11, 0x0

    .line 1366
    iput-object v11, v3, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    .line 1367
    .line 1368
    goto :goto_559

    .line 1369
    :cond_558
    const/4 v11, 0x0

    .line 1370
    :goto_559
    add-int/lit8 v5, v5, 0x1

    .line 1371
    .line 1372
    goto :goto_51c

    .line 1373
    :cond_55c
    if-eqz v21, :cond_573

    .line 1374
    .line 1375
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 1376
    .line 1377
    .line 1378
    move-result v0

    .line 1379
    if-gtz v0, :cond_565

    .line 1380
    .line 1381
    goto :goto_573

    .line 1382
    :cond_565
    const/4 v15, 0x0

    .line 1383
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v0

    .line 1387
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1388
    .line 1389
    .line 1390
    new-instance v0, Ljava/lang/ClassCastException;

    .line 1391
    .line 1392
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 1393
    .line 1394
    .line 1395
    throw v0

    .line 1396
    :cond_573
    :goto_573
    return-void

    :pswitch_data_574
    .packed-switch 0x6
        :pswitch_166
        :pswitch_16d
        :pswitch_164
        :pswitch_161
        :pswitch_15c
    .end packed-switch

    :pswitch_data_582
    .packed-switch 0x1
        :pswitch_2b5
        :pswitch_23a
        :pswitch_2a6
        :pswitch_294
        :pswitch_281
        :pswitch_272
        :pswitch_25f
        :pswitch_25a
        :pswitch_256
        :pswitch_24e
    .end packed-switch

    :pswitch_data_59a
    .packed-switch 0x1
        :pswitch_394
        :pswitch_311
        :pswitch_383
        :pswitch_372
        :pswitch_35d
        :pswitch_34c
        :pswitch_337
        :pswitch_333
        :pswitch_32e
        :pswitch_325
    .end packed-switch
.end method

.method public final B(I)Landroidx/fragment/app/c0;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    :goto_c
    if-ltz v2, :cond_1e

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/fragment/app/c0;

    .line 20
    .line 21
    if-eqz v3, :cond_1b

    .line 22
    .line 23
    iget v4, v3, Landroidx/fragment/app/c0;->F:I

    .line 24
    .line 25
    if-ne v4, p1, :cond_1b

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_1b
    add-int/lit8 v2, v2, -0x1

    .line 29
    .line 30
    goto :goto_c

    .line 31
    :cond_1e
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_3f

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Landroidx/fragment/app/g1;

    .line 54
    .line 55
    if-eqz v1, :cond_2a

    .line 56
    .line 57
    iget-object v1, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 58
    .line 59
    iget v2, v1, Landroidx/fragment/app/c0;->F:I

    .line 60
    .line 61
    if-ne v2, p1, :cond_2a

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method

.method public final C(Ljava/lang/String;)Landroidx/fragment/app/c0;
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    add-int/lit8 v2, v2, -0x1

    .line 12
    .line 13
    :goto_c
    if-ltz v2, :cond_22

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Landroidx/fragment/app/c0;

    .line 20
    .line 21
    if-eqz v3, :cond_1f

    .line 22
    .line 23
    iget-object v4, v3, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1f

    .line 30
    .line 31
    return-object v3

    .line 32
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    goto :goto_c

    .line 35
    :cond_22
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_47

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/fragment/app/g1;

    .line 58
    .line 59
    if-eqz v1, :cond_2e

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 62
    .line 63
    iget-object v2, v1, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2e

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_47
    const/4 p1, 0x0

    .line 73
    return-object p1
.end method

.method public final D()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->e()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2d

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/fragment/app/o;

    .line 20
    .line 21
    iget-boolean v2, v1, Landroidx/fragment/app/o;->f:Z

    .line 22
    .line 23
    if-eqz v2, :cond_8

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v2}, Landroidx/fragment/app/y0;->J(I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_26

    .line 31
    .line 32
    const-string v2, "FragmentManager"

    .line 33
    .line 34
    const-string v3, "SpecialEffectsController: Forcing postponed operations"

    .line 35
    .line 36
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_26
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v1, Landroidx/fragment/app/o;->f:Z

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/o;->e()V

    .line 43
    .line 44
    .line 45
    goto :goto_8

    .line 46
    :cond_2d
    return-void
.end method

.method public final F(Landroidx/fragment/app/c0;)Landroid/view/ViewGroup;
    .registers 3

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    iget v0, p1, Landroidx/fragment/app/c0;->G:I

    .line 7
    .line 8
    if-gtz v0, :cond_a

    .line 9
    .line 10
    goto :goto_21

    .line 11
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/y0;->x:Lh8/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lh8/b;->o()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_21

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/fragment/app/y0;->x:Lh8/b;

    .line 20
    .line 21
    iget p1, p1, Landroidx/fragment/app/c0;->G:I

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lh8/b;->n(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v0, :cond_21

    .line 30
    .line 31
    check-cast p1, Landroid/view/ViewGroup;

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_21
    :goto_21
    const/4 p1, 0x0

    .line 35
    return-object p1
.end method

.method public final G()Landroidx/fragment/app/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->G()Landroidx/fragment/app/r0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/y0;->A:Landroidx/fragment/app/r0;

    .line 13
    .line 14
    return-object v0
.end method

.method public final H()Le5/e;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->H()Le5/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/y0;->B:Le5/e;

    .line 13
    .line 14
    return-object v0
.end method

.method public final I(Landroidx/fragment/app/c0;)V
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1a

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "hide: "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "FragmentManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-boolean v0, p1, Landroidx/fragment/app/c0;->I:Z

    .line 28
    .line 29
    if-nez v0, :cond_29

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->I:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/c0;->T:Z

    .line 35
    .line 36
    xor-int/2addr v0, v1

    .line 37
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->T:Z

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->a0(Landroidx/fragment/app/c0;)V

    .line 40
    .line 41
    .line 42
    :cond_29
    return-void
.end method

.method public final L()Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    return v1

    .line 7
    :cond_6
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_19

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->g()Landroidx/fragment/app/y0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->L()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_19

    .line 24
    .line 25
    return v1

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    return v0
.end method

.method public final O(IZ)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-nez v0, :cond_10

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_8

    .line 7
    .line 8
    goto :goto_10

    .line 9
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string p2, "No activity"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_10
    :goto_10
    if-nez p2, :cond_17

    .line 18
    .line 19
    iget p2, p0, Landroidx/fragment/app/y0;->v:I

    .line 20
    .line 21
    if-ne p1, p2, :cond_17

    .line 22
    .line 23
    goto :goto_81

    .line 24
    :cond_17
    iput p1, p0, Landroidx/fragment/app/y0;->v:I

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 27
    .line 28
    iget-object p2, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, Ljava/util/HashMap;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :cond_29
    :goto_29
    if-ge v3, v1, :cond_41

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    check-cast v4, Landroidx/fragment/app/c0;

    .line 51
    .line 52
    iget-object v4, v4, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroidx/fragment/app/g1;

    .line 59
    .line 60
    if-eqz v4, :cond_29

    .line 61
    .line 62
    invoke-virtual {v4}, Landroidx/fragment/app/g1;->k()V

    .line 63
    .line 64
    .line 65
    goto :goto_29

    .line 66
    :cond_41
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :cond_49
    :goto_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6a

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/fragment/app/g1;

    .line 85
    .line 86
    if-eqz v0, :cond_49

    .line 87
    .line 88
    invoke-virtual {v0}, Landroidx/fragment/app/g1;->k()V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 92
    .line 93
    iget-boolean v3, v1, Landroidx/fragment/app/c0;->l:Z

    .line 94
    .line 95
    if-eqz v3, :cond_49

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/fragment/app/c0;->m()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_49

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/google/firebase/messaging/y;->y(Landroidx/fragment/app/g1;)V

    .line 104
    .line 105
    .line 106
    goto :goto_49

    .line 107
    :cond_6a
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->c0()V

    .line 108
    .line 109
    .line 110
    iget-boolean p1, p0, Landroidx/fragment/app/y0;->G:Z

    .line 111
    .line 112
    if-eqz p1, :cond_81

    .line 113
    .line 114
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 115
    .line 116
    if-eqz p1, :cond_81

    .line 117
    .line 118
    iget p2, p0, Landroidx/fragment/app/y0;->v:I

    .line 119
    .line 120
    const/4 v0, 0x7

    .line 121
    if-ne p2, v0, :cond_81

    .line 122
    .line 123
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 124
    .line 125
    invoke-virtual {p1}, Lb/p;->invalidateMenu()V

    .line 126
    .line 127
    .line 128
    iput-boolean v2, p0, Landroidx/fragment/app/y0;->G:Z

    .line 129
    .line 130
    :cond_81
    :goto_81
    return-void
.end method

.method public final P()V
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_2c

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->H:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->I:Z

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 12
    .line 13
    iput-boolean v0, v1, Landroidx/fragment/app/c1;->g:Z

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2c

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroidx/fragment/app/c0;

    .line 36
    .line 37
    if-eqz v1, :cond_18

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->P()V

    .line 42
    .line 43
    .line 44
    goto :goto_18

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public final Q()Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/fragment/app/y0;->y(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 10
    .line 11
    if-eqz v2, :cond_17

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->d()Landroidx/fragment/app/y0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroidx/fragment/app/y0;->Q()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_17

    .line 22
    .line 23
    return v1

    .line 24
    :cond_17
    iget-object v2, p0, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 v4, -0x1

    .line 29
    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/fragment/app/y0;->R(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_34

    .line 34
    .line 35
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->b:Z

    .line 36
    .line 37
    :try_start_24
    iget-object v1, p0, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v3}, Landroidx/fragment/app/y0;->T(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2f

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->d()V

    .line 45
    .line 46
    .line 47
    goto :goto_34

    .line 48
    :catchall_2f
    move-exception v0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->d()V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_34
    :goto_34
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->e0()V

    .line 54
    .line 55
    .line 56
    iget-boolean v1, p0, Landroidx/fragment/app/y0;->K:Z

    .line 57
    .line 58
    if-eqz v1, :cond_40

    .line 59
    .line 60
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->K:Z

    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->c0()V

    .line 63
    .line 64
    .line 65
    :cond_40
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    return v2
.end method

.method public final R(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p4, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p4, :cond_7

    .line 5
    .line 6
    move p4, v0

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    move p4, v1

    .line 9
    :goto_8
    iget-object v2, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eqz v2, :cond_12

    .line 17
    .line 18
    goto :goto_64

    .line 19
    :cond_12
    if-gez p3, :cond_21

    .line 20
    .line 21
    if-eqz p4, :cond_18

    .line 22
    .line 23
    move v3, v1

    .line 24
    goto :goto_64

    .line 25
    :cond_18
    iget-object p3, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    add-int/lit8 v3, p3, -0x1

    .line 32
    .line 33
    goto :goto_64

    .line 34
    :cond_21
    iget-object v2, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-int/2addr v2, v0

    .line 41
    :goto_28
    if-ltz v2, :cond_3c

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroidx/fragment/app/a;

    .line 50
    .line 51
    if-ltz p3, :cond_39

    .line 52
    .line 53
    iget v4, v4, Landroidx/fragment/app/a;->s:I

    .line 54
    .line 55
    if-ne p3, v4, :cond_39

    .line 56
    .line 57
    goto :goto_3c

    .line 58
    :cond_39
    add-int/lit8 v2, v2, -0x1

    .line 59
    .line 60
    goto :goto_28

    .line 61
    :cond_3c
    :goto_3c
    if-gez v2, :cond_40

    .line 62
    .line 63
    move v3, v2

    .line 64
    goto :goto_64

    .line 65
    :cond_40
    if-eqz p4, :cond_58

    .line 66
    .line 67
    move v3, v2

    .line 68
    :goto_43
    if-lez v3, :cond_64

    .line 69
    .line 70
    iget-object p4, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 71
    .line 72
    add-int/lit8 v2, v3, -0x1

    .line 73
    .line 74
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    check-cast p4, Landroidx/fragment/app/a;

    .line 79
    .line 80
    if-ltz p3, :cond_64

    .line 81
    .line 82
    iget p4, p4, Landroidx/fragment/app/a;->s:I

    .line 83
    .line 84
    if-ne p3, p4, :cond_64

    .line 85
    .line 86
    add-int/lit8 v3, v3, -0x1

    .line 87
    .line 88
    goto :goto_43

    .line 89
    :cond_58
    iget-object p3, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    sub-int/2addr p3, v0

    .line 96
    if-ne v2, p3, :cond_62

    .line 97
    .line 98
    goto :goto_64

    .line 99
    :cond_62
    add-int/lit8 v3, v2, 0x1

    .line 100
    .line 101
    :cond_64
    :goto_64
    if-gez v3, :cond_67

    .line 102
    .line 103
    return v1

    .line 104
    :cond_67
    iget-object p3, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    sub-int/2addr p3, v0

    .line 111
    :goto_6e
    if-lt p3, v3, :cond_83

    .line 112
    .line 113
    iget-object p4, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    check-cast p4, Landroidx/fragment/app/a;

    .line 120
    .line 121
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    .line 126
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    add-int/lit8 p3, p3, -0x1

    .line 130
    .line 131
    goto :goto_6e

    .line 132
    :cond_83
    return v0
.end method

.method public final S(Landroidx/fragment/app/c0;)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_24

    .line 7
    .line 8
    const-string v0, "FragmentManager"

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "remove: "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " nesting="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v2, p1, Landroidx/fragment/app/c0;->A:I

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_24
    invoke-virtual {p1}, Landroidx/fragment/app/c0;->m()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-boolean v1, p1, Landroidx/fragment/app/c0;->J:Z

    .line 42
    .line 43
    if-eqz v1, :cond_30

    .line 44
    .line 45
    if-nez v0, :cond_2f

    .line 46
    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    return-void

    .line 49
    :cond_30
    :goto_30
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Ljava/util/ArrayList;

    .line 54
    .line 55
    monitor-enter v1

    .line 56
    :try_start_37
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_51

    .line 64
    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->k:Z

    .line 66
    .line 67
    invoke-static {p1}, Landroidx/fragment/app/y0;->K(Landroidx/fragment/app/c0;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const/4 v1, 0x1

    .line 72
    if-eqz v0, :cond_4b

    .line 73
    .line 74
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->G:Z

    .line 75
    .line 76
    :cond_4b
    iput-boolean v1, p1, Landroidx/fragment/app/c0;->l:Z

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->a0(Landroidx/fragment/app/c0;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_51
    move-exception p1

    .line 83
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .line 84
    throw p1
.end method

.method public final T(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_5e

    .line 8
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v0, v1, :cond_5f

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_17
    if-ge v1, v0, :cond_59

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroidx/fragment/app/a;

    .line 31
    .line 32
    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    .line 33
    .line 34
    if-nez v3, :cond_56

    .line 35
    .line 36
    if-eq v2, v1, :cond_28

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/y0;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 39
    .line 40
    .line 41
    :cond_28
    add-int/lit8 v2, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_51

    .line 54
    .line 55
    :goto_36
    if-ge v2, v0, :cond_51

    .line 56
    .line 57
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_51

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Landroidx/fragment/app/a;

    .line 74
    .line 75
    iget-boolean v3, v3, Landroidx/fragment/app/a;->o:Z

    .line 76
    .line 77
    if-nez v3, :cond_51

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_36

    .line 82
    :cond_51
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/y0;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v2, -0x1

    .line 86
    .line 87
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_17

    .line 90
    :cond_59
    if-eq v2, v0, :cond_5e

    .line 91
    .line 92
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/y0;->A(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    :goto_5e
    return-void

    .line 96
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p2, "Internal error with the back stack records"

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public final U(Landroid/os/Bundle;)V
    .registers 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_3c

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 24
    .line 25
    const-string v4, "result_"

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_c

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    if-eqz v4, :cond_c

    .line 38
    .line 39
    iget-object v5, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 40
    .line 41
    iget-object v5, v5, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 42
    .line 43
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x7

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v5, v0, Landroidx/fragment/app/y0;->m:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_c

    .line 61
    :cond_3c
    new-instance v2, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_49
    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_78

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Ljava/lang/String;

    .line 85
    .line 86
    const-string v5, "fragment_"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_49

    .line 93
    .line 94
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_49

    .line 99
    .line 100
    iget-object v6, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 101
    .line 102
    iget-object v6, v6, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 103
    .line 104
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 109
    .line 110
    .line 111
    const/16 v6, 0x9

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    goto :goto_49

    .line 121
    :cond_78
    iget-object v3, v0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 122
    .line 123
    iget-object v4, v3, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v4, Ljava/util/HashMap;

    .line 126
    .line 127
    iget-object v5, v3, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v5, Ljava/util/HashMap;

    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 135
    .line 136
    .line 137
    const-string v2, "state"

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Landroidx/fragment/app/a1;

    .line 144
    .line 145
    if-nez v1, :cond_93

    .line 146
    .line 147
    return-void

    .line 148
    :cond_93
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 149
    .line 150
    .line 151
    iget-object v4, v1, Landroidx/fragment/app/a1;->a:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    const/4 v8, 0x0

    .line 158
    :cond_9d
    :goto_9d
    iget-object v9, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 159
    .line 160
    const-string v10, "): "

    .line 161
    .line 162
    const/4 v11, 0x2

    .line 163
    const-string v12, "FragmentManager"

    .line 164
    .line 165
    if-ge v8, v6, :cond_145

    .line 166
    .line 167
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    add-int/lit8 v8, v8, 0x1

    .line 172
    .line 173
    check-cast v13, Ljava/lang/String;

    .line 174
    .line 175
    const/4 v14, 0x0

    .line 176
    invoke-virtual {v3, v14, v13}, Lcom/google/firebase/messaging/y;->E(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    if-eqz v13, :cond_9d

    .line 181
    .line 182
    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    check-cast v14, Landroidx/fragment/app/e1;

    .line 187
    .line 188
    iget-object v15, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 189
    .line 190
    iget-object v14, v14, Landroidx/fragment/app/e1;->b:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v15, v15, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 193
    .line 194
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    check-cast v14, Landroidx/fragment/app/c0;

    .line 199
    .line 200
    if-eqz v14, :cond_ec

    .line 201
    .line 202
    invoke-static {v11}, Landroidx/fragment/app/y0;->J(I)Z

    .line 203
    .line 204
    .line 205
    move-result v15

    .line 206
    if-eqz v15, :cond_e3

    .line 207
    .line 208
    new-instance v15, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    move/from16 p1, v11

    .line 211
    .line 212
    const-string v11, "restoreSaveState: re-attaching retained "

    .line 213
    .line 214
    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    goto :goto_e5

    .line 228
    :cond_e3
    move/from16 p1, v11

    .line 229
    .line 230
    :goto_e5
    new-instance v11, Landroidx/fragment/app/g1;

    .line 231
    .line 232
    invoke-direct {v11, v9, v3, v14, v13}, Landroidx/fragment/app/g1;-><init>(Lcom/google/android/gms/internal/measurement/y4;Lcom/google/firebase/messaging/y;Landroidx/fragment/app/c0;Landroid/os/Bundle;)V

    .line 233
    .line 234
    .line 235
    move-object v9, v13

    .line 236
    goto :goto_10c

    .line 237
    :cond_ec
    move/from16 p1, v11

    .line 238
    .line 239
    new-instance v15, Landroidx/fragment/app/g1;

    .line 240
    .line 241
    iget-object v9, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 242
    .line 243
    iget-object v9, v9, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 244
    .line 245
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 246
    .line 247
    .line 248
    move-result-object v18

    .line 249
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->G()Landroidx/fragment/app/r0;

    .line 250
    .line 251
    .line 252
    move-result-object v19

    .line 253
    iget-object v9, v0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 254
    .line 255
    iget-object v11, v0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 256
    .line 257
    move-object/from16 v16, v9

    .line 258
    .line 259
    move-object/from16 v17, v11

    .line 260
    .line 261
    move-object/from16 v20, v13

    .line 262
    .line 263
    invoke-direct/range {v15 .. v20}, Landroidx/fragment/app/g1;-><init>(Lcom/google/android/gms/internal/measurement/y4;Lcom/google/firebase/messaging/y;Ljava/lang/ClassLoader;Landroidx/fragment/app/r0;Landroid/os/Bundle;)V

    .line 264
    .line 265
    .line 266
    move-object/from16 v9, v20

    .line 267
    .line 268
    move-object v11, v15

    .line 269
    :goto_10c
    iget-object v13, v11, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 270
    .line 271
    iput-object v9, v13, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 272
    .line 273
    iput-object v0, v13, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 274
    .line 275
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 276
    .line 277
    .line 278
    move-result v9

    .line 279
    if-eqz v9, :cond_131

    .line 280
    .line 281
    new-instance v9, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    const-string v14, "restoreSaveState: active ("

    .line 284
    .line 285
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v14, v13, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    :cond_131
    iget-object v9, v0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 307
    .line 308
    iget-object v9, v9, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 309
    .line 310
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-virtual {v11, v9}, Landroidx/fragment/app/g1;->m(Ljava/lang/ClassLoader;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, v11}, Lcom/google/firebase/messaging/y;->x(Landroidx/fragment/app/g1;)V

    .line 318
    .line 319
    .line 320
    iget v9, v0, Landroidx/fragment/app/y0;->v:I

    .line 321
    .line 322
    iput v9, v11, Landroidx/fragment/app/g1;->e:I

    .line 323
    .line 324
    goto/16 :goto_9d

    .line 325
    .line 326
    :cond_145
    move/from16 p1, v11

    .line 327
    .line 328
    iget-object v2, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    new-instance v4, Ljava/util/ArrayList;

    .line 334
    .line 335
    iget-object v2, v2, Landroidx/fragment/app/c1;->b:Ljava/util/HashMap;

    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    const/4 v6, 0x0

    .line 349
    :goto_15c
    const/4 v8, 0x1

    .line 350
    if-ge v6, v2, :cond_1a8

    .line 351
    .line 352
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v11

    .line 356
    add-int/lit8 v6, v6, 0x1

    .line 357
    .line 358
    check-cast v11, Landroidx/fragment/app/c0;

    .line 359
    .line 360
    iget-object v13, v11, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v13

    .line 366
    if-eqz v13, :cond_170

    .line 367
    .line 368
    goto :goto_15c

    .line 369
    :cond_170
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 370
    .line 371
    .line 372
    move-result v13

    .line 373
    if-eqz v13, :cond_191

    .line 374
    .line 375
    new-instance v13, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string v14, "Discarding retained Fragment "

    .line 378
    .line 379
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v14, " that was not found in the set of active Fragments "

    .line 386
    .line 387
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    iget-object v14, v1, Landroidx/fragment/app/a1;->a:Ljava/util/ArrayList;

    .line 391
    .line 392
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v13

    .line 399
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    :cond_191
    iget-object v13, v0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 403
    .line 404
    invoke-virtual {v13, v11}, Landroidx/fragment/app/c1;->g(Landroidx/fragment/app/c0;)V

    .line 405
    .line 406
    .line 407
    iput-object v0, v11, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 408
    .line 409
    new-instance v13, Landroidx/fragment/app/g1;

    .line 410
    .line 411
    invoke-direct {v13, v9, v3, v11}, Landroidx/fragment/app/g1;-><init>(Lcom/google/android/gms/internal/measurement/y4;Lcom/google/firebase/messaging/y;Landroidx/fragment/app/c0;)V

    .line 412
    .line 413
    .line 414
    iput v8, v13, Landroidx/fragment/app/g1;->e:I

    .line 415
    .line 416
    invoke-virtual {v13}, Landroidx/fragment/app/g1;->k()V

    .line 417
    .line 418
    .line 419
    iput-boolean v8, v11, Landroidx/fragment/app/c0;->l:Z

    .line 420
    .line 421
    invoke-virtual {v13}, Landroidx/fragment/app/g1;->k()V

    .line 422
    .line 423
    .line 424
    goto :goto_15c

    .line 425
    :cond_1a8
    iget-object v2, v1, Landroidx/fragment/app/a1;->b:Ljava/util/ArrayList;

    .line 426
    .line 427
    iget-object v4, v3, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v4, Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 432
    .line 433
    .line 434
    if-eqz v2, :cond_1f7

    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    const/4 v5, 0x0

    .line 441
    :goto_1b8
    if-ge v5, v4, :cond_1f7

    .line 442
    .line 443
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    add-int/lit8 v5, v5, 0x1

    .line 448
    .line 449
    check-cast v6, Ljava/lang/String;

    .line 450
    .line 451
    invoke-virtual {v3, v6}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 452
    .line 453
    .line 454
    move-result-object v9

    .line 455
    if-eqz v9, :cond_1e9

    .line 456
    .line 457
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 458
    .line 459
    .line 460
    move-result v11

    .line 461
    if-eqz v11, :cond_1e5

    .line 462
    .line 463
    new-instance v11, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    const-string v13, "restoreSaveState: added ("

    .line 466
    .line 467
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    invoke-static {v12, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    :cond_1e5
    invoke-virtual {v3, v9}, Lcom/google/firebase/messaging/y;->j(Landroidx/fragment/app/c0;)V

    .line 487
    .line 488
    .line 489
    goto :goto_1b8

    .line 490
    :cond_1e9
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 491
    .line 492
    const-string v2, "No instantiated fragment for ("

    .line 493
    .line 494
    const-string v3, ")"

    .line 495
    .line 496
    invoke-static {v2, v6, v3}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    throw v1

    .line 504
    :cond_1f7
    iget-object v2, v1, Landroidx/fragment/app/a1;->c:[Landroidx/fragment/app/b;

    .line 505
    .line 506
    if-eqz v2, :cond_335

    .line 507
    .line 508
    new-instance v2, Ljava/util/ArrayList;

    .line 509
    .line 510
    iget-object v4, v1, Landroidx/fragment/app/a1;->c:[Landroidx/fragment/app/b;

    .line 511
    .line 512
    array-length v4, v4

    .line 513
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    .line 515
    .line 516
    iput-object v2, v0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 517
    .line 518
    const/4 v2, 0x0

    .line 519
    :goto_206
    iget-object v4, v1, Landroidx/fragment/app/a1;->c:[Landroidx/fragment/app/b;

    .line 520
    .line 521
    array-length v5, v4

    .line 522
    if-ge v2, v5, :cond_333

    .line 523
    .line 524
    aget-object v4, v4, v2

    .line 525
    .line 526
    iget-object v5, v4, Landroidx/fragment/app/b;->b:Ljava/util/ArrayList;

    .line 527
    .line 528
    new-instance v6, Landroidx/fragment/app/a;

    .line 529
    .line 530
    invoke-direct {v6, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/y0;)V

    .line 531
    .line 532
    .line 533
    iget-object v9, v4, Landroidx/fragment/app/b;->a:[I

    .line 534
    .line 535
    const/4 v11, 0x0

    .line 536
    const/4 v13, 0x0

    .line 537
    :goto_218
    array-length v14, v9

    .line 538
    if-ge v11, v14, :cond_29e

    .line 539
    .line 540
    new-instance v14, Landroidx/fragment/app/h1;

    .line 541
    .line 542
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 543
    .line 544
    .line 545
    add-int/lit8 v15, v11, 0x1

    .line 546
    .line 547
    aget v7, v9, v11

    .line 548
    .line 549
    iput v7, v14, Landroidx/fragment/app/h1;->a:I

    .line 550
    .line 551
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 552
    .line 553
    .line 554
    move-result v7

    .line 555
    if-eqz v7, :cond_24f

    .line 556
    .line 557
    new-instance v7, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    const-string v8, "Instantiate "

    .line 560
    .line 561
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v8, " op #"

    .line 568
    .line 569
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    const-string v8, " base fragment #"

    .line 576
    .line 577
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    aget v8, v9, v15

    .line 581
    .line 582
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v7

    .line 589
    invoke-static {v12, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    :cond_24f
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    iget-object v8, v4, Landroidx/fragment/app/b;->c:[I

    .line 597
    .line 598
    aget v8, v8, v13

    .line 599
    .line 600
    aget-object v7, v7, v8

    .line 601
    .line 602
    iput-object v7, v14, Landroidx/fragment/app/h1;->h:Landroidx/lifecycle/n;

    .line 603
    .line 604
    invoke-static {}, Landroidx/lifecycle/n;->values()[Landroidx/lifecycle/n;

    .line 605
    .line 606
    .line 607
    move-result-object v7

    .line 608
    iget-object v8, v4, Landroidx/fragment/app/b;->d:[I

    .line 609
    .line 610
    aget v8, v8, v13

    .line 611
    .line 612
    aget-object v7, v7, v8

    .line 613
    .line 614
    iput-object v7, v14, Landroidx/fragment/app/h1;->i:Landroidx/lifecycle/n;

    .line 615
    .line 616
    add-int/lit8 v7, v11, 0x2

    .line 617
    .line 618
    aget v8, v9, v15

    .line 619
    .line 620
    if-eqz v8, :cond_26f

    .line 621
    .line 622
    const/4 v8, 0x1

    .line 623
    goto :goto_270

    .line 624
    :cond_26f
    const/4 v8, 0x0

    .line 625
    :goto_270
    iput-boolean v8, v14, Landroidx/fragment/app/h1;->c:Z

    .line 626
    .line 627
    add-int/lit8 v8, v11, 0x3

    .line 628
    .line 629
    aget v7, v9, v7

    .line 630
    .line 631
    iput v7, v14, Landroidx/fragment/app/h1;->d:I

    .line 632
    .line 633
    add-int/lit8 v15, v11, 0x4

    .line 634
    .line 635
    aget v8, v9, v8

    .line 636
    .line 637
    iput v8, v14, Landroidx/fragment/app/h1;->e:I

    .line 638
    .line 639
    add-int/lit8 v18, v11, 0x5

    .line 640
    .line 641
    aget v15, v9, v15

    .line 642
    .line 643
    iput v15, v14, Landroidx/fragment/app/h1;->f:I

    .line 644
    .line 645
    add-int/lit8 v11, v11, 0x6

    .line 646
    .line 647
    move-object/from16 v19, v9

    .line 648
    .line 649
    aget v9, v19, v18

    .line 650
    .line 651
    iput v9, v14, Landroidx/fragment/app/h1;->g:I

    .line 652
    .line 653
    iput v7, v6, Landroidx/fragment/app/a;->b:I

    .line 654
    .line 655
    iput v8, v6, Landroidx/fragment/app/a;->c:I

    .line 656
    .line 657
    iput v15, v6, Landroidx/fragment/app/a;->d:I

    .line 658
    .line 659
    iput v9, v6, Landroidx/fragment/app/a;->e:I

    .line 660
    .line 661
    invoke-virtual {v6, v14}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/h1;)V

    .line 662
    .line 663
    .line 664
    add-int/lit8 v13, v13, 0x1

    .line 665
    .line 666
    move-object/from16 v9, v19

    .line 667
    .line 668
    const/4 v8, 0x1

    .line 669
    goto/16 :goto_218

    .line 670
    .line 671
    :cond_29e
    iget v7, v4, Landroidx/fragment/app/b;->e:I

    .line 672
    .line 673
    iput v7, v6, Landroidx/fragment/app/a;->f:I

    .line 674
    .line 675
    iget-object v7, v4, Landroidx/fragment/app/b;->f:Ljava/lang/String;

    .line 676
    .line 677
    iput-object v7, v6, Landroidx/fragment/app/a;->h:Ljava/lang/String;

    .line 678
    .line 679
    const/4 v7, 0x1

    .line 680
    iput-boolean v7, v6, Landroidx/fragment/app/a;->g:Z

    .line 681
    .line 682
    iget v7, v4, Landroidx/fragment/app/b;->h:I

    .line 683
    .line 684
    iput v7, v6, Landroidx/fragment/app/a;->i:I

    .line 685
    .line 686
    iget-object v7, v4, Landroidx/fragment/app/b;->i:Ljava/lang/CharSequence;

    .line 687
    .line 688
    iput-object v7, v6, Landroidx/fragment/app/a;->j:Ljava/lang/CharSequence;

    .line 689
    .line 690
    iget v7, v4, Landroidx/fragment/app/b;->j:I

    .line 691
    .line 692
    iput v7, v6, Landroidx/fragment/app/a;->k:I

    .line 693
    .line 694
    iget-object v7, v4, Landroidx/fragment/app/b;->k:Ljava/lang/CharSequence;

    .line 695
    .line 696
    iput-object v7, v6, Landroidx/fragment/app/a;->l:Ljava/lang/CharSequence;

    .line 697
    .line 698
    iget-object v7, v4, Landroidx/fragment/app/b;->l:Ljava/util/ArrayList;

    .line 699
    .line 700
    iput-object v7, v6, Landroidx/fragment/app/a;->m:Ljava/util/ArrayList;

    .line 701
    .line 702
    iget-object v7, v4, Landroidx/fragment/app/b;->m:Ljava/util/ArrayList;

    .line 703
    .line 704
    iput-object v7, v6, Landroidx/fragment/app/a;->n:Ljava/util/ArrayList;

    .line 705
    .line 706
    iget-boolean v7, v4, Landroidx/fragment/app/b;->v:Z

    .line 707
    .line 708
    iput-boolean v7, v6, Landroidx/fragment/app/a;->o:Z

    .line 709
    .line 710
    iget v4, v4, Landroidx/fragment/app/b;->g:I

    .line 711
    .line 712
    iput v4, v6, Landroidx/fragment/app/a;->s:I

    .line 713
    .line 714
    const/4 v4, 0x0

    .line 715
    :goto_2ca
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    if-ge v4, v7, :cond_2e9

    .line 720
    .line 721
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v7

    .line 725
    check-cast v7, Ljava/lang/String;

    .line 726
    .line 727
    if-eqz v7, :cond_2e6

    .line 728
    .line 729
    iget-object v8, v6, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 730
    .line 731
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v8

    .line 735
    check-cast v8, Landroidx/fragment/app/h1;

    .line 736
    .line 737
    invoke-virtual {v3, v7}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    iput-object v7, v8, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 742
    .line 743
    :cond_2e6
    add-int/lit8 v4, v4, 0x1

    .line 744
    .line 745
    goto :goto_2ca

    .line 746
    :cond_2e9
    const/4 v7, 0x1

    .line 747
    invoke-virtual {v6, v7}, Landroidx/fragment/app/a;->c(I)V

    .line 748
    .line 749
    .line 750
    invoke-static/range {p1 .. p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 751
    .line 752
    .line 753
    move-result v4

    .line 754
    if-eqz v4, :cond_328

    .line 755
    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    const-string v5, "restoreAllState: back stack #"

    .line 759
    .line 760
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    const-string v5, " (index "

    .line 767
    .line 768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget v5, v6, Landroidx/fragment/app/a;->s:I

    .line 772
    .line 773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    invoke-static {v12, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .line 788
    .line 789
    new-instance v4, Landroidx/fragment/app/j1;

    .line 790
    .line 791
    invoke-direct {v4}, Landroidx/fragment/app/j1;-><init>()V

    .line 792
    .line 793
    .line 794
    new-instance v5, Ljava/io/PrintWriter;

    .line 795
    .line 796
    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 797
    .line 798
    .line 799
    const-string v4, "  "

    .line 800
    .line 801
    const/4 v8, 0x0

    .line 802
    invoke-virtual {v6, v4, v5, v8}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 806
    .line 807
    .line 808
    goto :goto_329

    .line 809
    :cond_328
    const/4 v8, 0x0

    .line 810
    :goto_329
    iget-object v4, v0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 811
    .line 812
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    add-int/lit8 v2, v2, 0x1

    .line 816
    .line 817
    move v8, v7

    .line 818
    goto/16 :goto_206

    .line 819
    .line 820
    :cond_333
    const/4 v8, 0x0

    .line 821
    goto :goto_33d

    .line 822
    :cond_335
    const/4 v8, 0x0

    .line 823
    new-instance v2, Ljava/util/ArrayList;

    .line 824
    .line 825
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 826
    .line 827
    .line 828
    iput-object v2, v0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 829
    .line 830
    :goto_33d
    iget-object v2, v0, Landroidx/fragment/app/y0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 831
    .line 832
    iget v4, v1, Landroidx/fragment/app/a1;->d:I

    .line 833
    .line 834
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 835
    .line 836
    .line 837
    iget-object v2, v1, Landroidx/fragment/app/a1;->e:Ljava/lang/String;

    .line 838
    .line 839
    if-eqz v2, :cond_351

    .line 840
    .line 841
    invoke-virtual {v3, v2}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 842
    .line 843
    .line 844
    move-result-object v2

    .line 845
    iput-object v2, v0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 846
    .line 847
    invoke-virtual {v0, v2}, Landroidx/fragment/app/y0;->r(Landroidx/fragment/app/c0;)V

    .line 848
    .line 849
    .line 850
    :cond_351
    iget-object v2, v1, Landroidx/fragment/app/a1;->f:Ljava/util/ArrayList;

    .line 851
    .line 852
    if-eqz v2, :cond_372

    .line 853
    .line 854
    move v7, v8

    .line 855
    :goto_356
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    if-ge v7, v3, :cond_372

    .line 860
    .line 861
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v3

    .line 865
    check-cast v3, Ljava/lang/String;

    .line 866
    .line 867
    iget-object v4, v1, Landroidx/fragment/app/a1;->g:Ljava/util/ArrayList;

    .line 868
    .line 869
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 870
    .line 871
    .line 872
    move-result-object v4

    .line 873
    check-cast v4, Landroidx/fragment/app/c;

    .line 874
    .line 875
    iget-object v5, v0, Landroidx/fragment/app/y0;->l:Ljava/util/Map;

    .line 876
    .line 877
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    add-int/lit8 v7, v7, 0x1

    .line 881
    .line 882
    goto :goto_356

    .line 883
    :cond_372
    new-instance v2, Ljava/util/ArrayDeque;

    .line 884
    .line 885
    iget-object v1, v1, Landroidx/fragment/app/a1;->h:Ljava/util/ArrayList;

    .line 886
    .line 887
    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 888
    .line 889
    .line 890
    iput-object v2, v0, Landroidx/fragment/app/y0;->F:Ljava/util/ArrayDeque;

    .line 891
    .line 892
    return-void
.end method

.method public final V()Landroid/os/Bundle;
    .registers 16

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->D()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->w()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, v1}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->H:Z

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 19
    .line 20
    iput-boolean v1, v2, Landroidx/fragment/app/c1;->g:Z

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x2

    .line 54
    if-eqz v4, :cond_f1

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Landroidx/fragment/app/g1;

    .line 61
    .line 62
    if-eqz v4, :cond_2f

    .line 63
    .line 64
    iget-object v7, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 65
    .line 66
    iget-object v8, v7, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v9, Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v10, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 74
    .line 75
    iget v11, v10, Landroidx/fragment/app/c0;->a:I

    .line 76
    .line 77
    const/4 v12, -0x1

    .line 78
    if-ne v11, v12, :cond_56

    .line 79
    .line 80
    iget-object v11, v10, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 81
    .line 82
    if-eqz v11, :cond_56

    .line 83
    .line 84
    invoke-virtual {v9, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    :cond_56
    new-instance v11, Landroidx/fragment/app/e1;

    .line 88
    .line 89
    invoke-direct {v11, v10}, Landroidx/fragment/app/e1;-><init>(Landroidx/fragment/app/c0;)V

    .line 90
    .line 91
    .line 92
    const-string v13, "state"

    .line 93
    .line 94
    invoke-virtual {v9, v13, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    .line 96
    .line 97
    iget v11, v10, Landroidx/fragment/app/c0;->a:I

    .line 98
    .line 99
    if-le v11, v12, :cond_bb

    .line 100
    .line 101
    new-instance v11, Landroid/os/Bundle;

    .line 102
    .line 103
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10, v11}, Landroidx/fragment/app/c0;->y(Landroid/os/Bundle;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    if-nez v12, :cond_77

    .line 114
    .line 115
    const-string v12, "savedInstanceState"

    .line 116
    .line 117
    invoke-virtual {v9, v12, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    :cond_77
    iget-object v12, v4, Landroidx/fragment/app/g1;->a:Lcom/google/android/gms/internal/measurement/y4;

    .line 121
    .line 122
    invoke-virtual {v12, v10, v11, v5}, Lcom/google/android/gms/internal/measurement/y4;->r(Landroidx/fragment/app/c0;Landroid/os/Bundle;Z)V

    .line 123
    .line 124
    .line 125
    new-instance v5, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 128
    .line 129
    .line 130
    iget-object v11, v10, Landroidx/fragment/app/c0;->a0:Le1/f;

    .line 131
    .line 132
    invoke-virtual {v11, v5}, Le1/f;->c(Landroid/os/Bundle;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    if-nez v11, :cond_91

    .line 140
    .line 141
    const-string v11, "registryState"

    .line 142
    .line 143
    invoke-virtual {v9, v11, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    :cond_91
    iget-object v5, v10, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 147
    .line 148
    invoke-virtual {v5}, Landroidx/fragment/app/y0;->V()Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-nez v11, :cond_a2

    .line 157
    .line 158
    const-string v11, "childFragmentManager"

    .line 159
    .line 160
    invoke-virtual {v9, v11, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    :cond_a2
    iget-object v5, v10, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 164
    .line 165
    if-eqz v5, :cond_a9

    .line 166
    .line 167
    invoke-virtual {v4}, Landroidx/fragment/app/g1;->o()V

    .line 168
    .line 169
    .line 170
    :cond_a9
    iget-object v4, v10, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 171
    .line 172
    if-eqz v4, :cond_b2

    .line 173
    .line 174
    const-string v5, "viewState"

    .line 175
    .line 176
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 177
    .line 178
    .line 179
    :cond_b2
    iget-object v4, v10, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 180
    .line 181
    if-eqz v4, :cond_bb

    .line 182
    .line 183
    const-string v5, "viewRegistryState"

    .line 184
    .line 185
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    .line 187
    .line 188
    :cond_bb
    iget-object v4, v10, Landroidx/fragment/app/c0;->f:Landroid/os/Bundle;

    .line 189
    .line 190
    if-eqz v4, :cond_c4

    .line 191
    .line 192
    const-string v5, "arguments"

    .line 193
    .line 194
    invoke-virtual {v9, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    .line 196
    .line 197
    :cond_c4
    invoke-virtual {v1, v9, v8}, Lcom/google/firebase/messaging/y;->E(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    .line 198
    .line 199
    .line 200
    iget-object v4, v7, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_2f

    .line 210
    .line 211
    const-string v4, "FragmentManager"

    .line 212
    .line 213
    new-instance v5, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v6, "Saved state of "

    .line 216
    .line 217
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v6, ": "

    .line 224
    .line 225
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget-object v6, v7, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 229
    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    goto/16 :goto_2f

    .line 241
    .line 242
    :cond_f1
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 243
    .line 244
    iget-object v1, v1, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Ljava/util/HashMap;

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_10b

    .line 253
    .line 254
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    if-eqz v1, :cond_24d

    .line 259
    .line 260
    const-string v1, "FragmentManager"

    .line 261
    .line 262
    const-string v2, "saveAllState: no fragments!"

    .line 263
    .line 264
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    return-object v0

    .line 268
    :cond_10b
    iget-object v3, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 269
    .line 270
    iget-object v4, v3, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v4, Ljava/util/ArrayList;

    .line 273
    .line 274
    monitor-enter v4

    .line 275
    :try_start_112
    iget-object v7, v3, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v7, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    const/4 v8, 0x0

    .line 284
    if-eqz v7, :cond_123

    .line 285
    .line 286
    monitor-exit v4

    .line 287
    move-object v7, v8

    .line 288
    goto :goto_170

    .line 289
    :catchall_120
    move-exception v0

    .line 290
    goto/16 :goto_24e

    .line 291
    .line 292
    :cond_123
    new-instance v7, Ljava/util/ArrayList;

    .line 293
    .line 294
    iget-object v9, v3, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v9, Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result v9

    .line 302
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .line 304
    .line 305
    iget-object v3, v3, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v3, Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v9

    .line 313
    move v10, v5

    .line 314
    :cond_139
    :goto_139
    if-ge v10, v9, :cond_16f

    .line 315
    .line 316
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    add-int/lit8 v10, v10, 0x1

    .line 321
    .line 322
    check-cast v11, Landroidx/fragment/app/c0;

    .line 323
    .line 324
    iget-object v12, v11, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 330
    .line 331
    .line 332
    move-result v12

    .line 333
    if-eqz v12, :cond_139

    .line 334
    .line 335
    const-string v12, "FragmentManager"

    .line 336
    .line 337
    new-instance v13, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v14, "saveAllState: adding fragment ("

    .line 343
    .line 344
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v14, v11, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 348
    .line 349
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v14, "): "

    .line 353
    .line 354
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v11

    .line 364
    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    goto :goto_139

    .line 368
    :cond_16f
    monitor-exit v4
    :try_end_170
    .catchall {:try_start_112 .. :try_end_170} :catchall_120

    .line 369
    :goto_170
    iget-object v3, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    if-lez v3, :cond_1b5

    .line 376
    .line 377
    new-array v4, v3, [Landroidx/fragment/app/b;

    .line 378
    .line 379
    :goto_17a
    if-ge v5, v3, :cond_1b6

    .line 380
    .line 381
    new-instance v9, Landroidx/fragment/app/b;

    .line 382
    .line 383
    iget-object v10, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v10

    .line 389
    check-cast v10, Landroidx/fragment/app/a;

    .line 390
    .line 391
    invoke-direct {v9, v10}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    .line 392
    .line 393
    .line 394
    aput-object v9, v4, v5

    .line 395
    .line 396
    invoke-static {v6}, Landroidx/fragment/app/y0;->J(I)Z

    .line 397
    .line 398
    .line 399
    move-result v9

    .line 400
    if-eqz v9, :cond_1b2

    .line 401
    .line 402
    const-string v9, "FragmentManager"

    .line 403
    .line 404
    new-instance v10, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    const-string v11, "saveAllState: adding back stack #"

    .line 407
    .line 408
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v11, ": "

    .line 415
    .line 416
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    iget-object v11, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 420
    .line 421
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v11

    .line 425
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    :cond_1b2
    add-int/lit8 v5, v5, 0x1

    .line 436
    .line 437
    goto :goto_17a

    .line 438
    :cond_1b5
    move-object v4, v8

    .line 439
    :cond_1b6
    new-instance v3, Landroidx/fragment/app/a1;

    .line 440
    .line 441
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 442
    .line 443
    .line 444
    iput-object v8, v3, Landroidx/fragment/app/a1;->e:Ljava/lang/String;

    .line 445
    .line 446
    new-instance v5, Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .line 450
    .line 451
    iput-object v5, v3, Landroidx/fragment/app/a1;->f:Ljava/util/ArrayList;

    .line 452
    .line 453
    new-instance v6, Ljava/util/ArrayList;

    .line 454
    .line 455
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .line 457
    .line 458
    iput-object v6, v3, Landroidx/fragment/app/a1;->g:Ljava/util/ArrayList;

    .line 459
    .line 460
    iput-object v2, v3, Landroidx/fragment/app/a1;->a:Ljava/util/ArrayList;

    .line 461
    .line 462
    iput-object v7, v3, Landroidx/fragment/app/a1;->b:Ljava/util/ArrayList;

    .line 463
    .line 464
    iput-object v4, v3, Landroidx/fragment/app/a1;->c:[Landroidx/fragment/app/b;

    .line 465
    .line 466
    iget-object v2, p0, Landroidx/fragment/app/y0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    iput v2, v3, Landroidx/fragment/app/a1;->d:I

    .line 473
    .line 474
    iget-object v2, p0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 475
    .line 476
    if-eqz v2, :cond_1e1

    .line 477
    .line 478
    iget-object v2, v2, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 479
    .line 480
    iput-object v2, v3, Landroidx/fragment/app/a1;->e:Ljava/lang/String;

    .line 481
    .line 482
    :cond_1e1
    iget-object v2, p0, Landroidx/fragment/app/y0;->l:Ljava/util/Map;

    .line 483
    .line 484
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 489
    .line 490
    .line 491
    iget-object v2, p0, Landroidx/fragment/app/y0;->l:Ljava/util/Map;

    .line 492
    .line 493
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    .line 499
    .line 500
    new-instance v2, Ljava/util/ArrayList;

    .line 501
    .line 502
    iget-object v4, p0, Landroidx/fragment/app/y0;->F:Ljava/util/ArrayDeque;

    .line 503
    .line 504
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 505
    .line 506
    .line 507
    iput-object v2, v3, Landroidx/fragment/app/a1;->h:Ljava/util/ArrayList;

    .line 508
    .line 509
    const-string v2, "state"

    .line 510
    .line 511
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 512
    .line 513
    .line 514
    iget-object v2, p0, Landroidx/fragment/app/y0;->m:Ljava/util/Map;

    .line 515
    .line 516
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    :goto_20b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_229

    .line 529
    .line 530
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    check-cast v3, Ljava/lang/String;

    .line 535
    .line 536
    const-string v4, "result_"

    .line 537
    .line 538
    invoke-static {v4, v3}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    iget-object v5, p0, Landroidx/fragment/app/y0;->m:Ljava/util/Map;

    .line 543
    .line 544
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    check-cast v3, Landroid/os/Bundle;

    .line 549
    .line 550
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 551
    .line 552
    .line 553
    goto :goto_20b

    .line 554
    :cond_229
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    :goto_231
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eqz v3, :cond_24d

    .line 567
    .line 568
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    check-cast v3, Ljava/lang/String;

    .line 573
    .line 574
    const-string v4, "fragment_"

    .line 575
    .line 576
    invoke-static {v4, v3}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    check-cast v3, Landroid/os/Bundle;

    .line 585
    .line 586
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 587
    .line 588
    .line 589
    goto :goto_231

    .line 590
    :cond_24d
    return-object v0

    .line 591
    :goto_24e
    :try_start_24e
    monitor-exit v4
    :try_end_24f
    .catchall {:try_start_24e .. :try_end_24f} :catchall_120

    .line 592
    throw v0
.end method

.method public final W()V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v2, :cond_24

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/fragment/app/g0;->c:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/fragment/app/y0;->P:Landroidx/fragment/app/p;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 23
    .line 24
    iget-object v1, v1, Landroidx/fragment/app/g0;->c:Landroid/os/Handler;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/fragment/app/y0;->P:Landroidx/fragment/app/p;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->e0()V

    .line 32
    .line 33
    .line 34
    goto :goto_24

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    goto :goto_26

    .line 37
    :cond_24
    :goto_24
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    .line 40
    throw v1
.end method

.method public final X(Landroidx/fragment/app/c0;Z)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->F(Landroidx/fragment/app/c0;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_11

    .line 6
    .line 7
    instance-of v0, p1, Landroidx/fragment/app/j0;

    .line 8
    .line 9
    if-eqz v0, :cond_11

    .line 10
    .line 11
    check-cast p1, Landroidx/fragment/app/j0;

    .line 12
    .line 13
    xor-int/lit8 p2, p2, 0x1

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/fragment/app/j0;->setDrawDisappearingViewsLast(Z)V

    .line 16
    .line 17
    .line 18
    :cond_11
    return-void
.end method

.method public final Y(Landroidx/fragment/app/c0;Landroidx/lifecycle/n;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_19

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 16
    .line 17
    if-eqz v0, :cond_16

    .line 18
    .line 19
    iget-object v0, p1, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 20
    .line 21
    if-ne v0, p0, :cond_19

    .line 22
    .line 23
    :cond_16
    iput-object p2, p1, Landroidx/fragment/app/c0;->W:Landroidx/lifecycle/n;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v1, "Fragment "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2
.end method

.method public final Z(Landroidx/fragment/app/c0;)V
    .registers 5

    .line 1
    if-eqz p1, :cond_35

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_19

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 18
    .line 19
    if-eqz v0, :cond_35

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 22
    .line 23
    if-ne v0, p0, :cond_19

    .line 24
    .line 25
    goto :goto_35

    .line 26
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Fragment "

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " is not an active fragment of FragmentManager "

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_35
    :goto_35
    iget-object v0, p0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 55
    .line 56
    iput-object p1, p0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->r(Landroidx/fragment/app/c0;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->r(Landroidx/fragment/app/c0;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final a(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/c0;->V:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-static {p1, v0}, Lt0/c;->c(Landroidx/fragment/app/c0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_7
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_21

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "add: "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "FragmentManager"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_21
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object p0, p1, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/y;->x(Landroidx/fragment/app/g1;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p1, Landroidx/fragment/app/c0;->J:Z

    .line 46
    .line 47
    if-nez v2, :cond_45

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/y;->j(Landroidx/fragment/app/c0;)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p1, Landroidx/fragment/app/c0;->l:Z

    .line 54
    .line 55
    iget-object v2, p1, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 56
    .line 57
    if-nez v2, :cond_3c

    .line 58
    .line 59
    iput-boolean v1, p1, Landroidx/fragment/app/c0;->T:Z

    .line 60
    .line 61
    :cond_3c
    invoke-static {p1}, Landroidx/fragment/app/y0;->K(Landroidx/fragment/app/c0;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_45

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Landroidx/fragment/app/y0;->G:Z

    .line 69
    .line 70
    :cond_45
    return-object v0
.end method

.method public final a0(Landroidx/fragment/app/c0;)V
    .registers 7

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->F(Landroidx/fragment/app/c0;)Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4a

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_d

    .line 11
    .line 12
    move v3, v2

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    iget v3, v1, Landroidx/fragment/app/z;->b:I

    .line 15
    .line 16
    :goto_f
    if-nez v1, :cond_13

    .line 17
    .line 18
    move v4, v2

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    iget v4, v1, Landroidx/fragment/app/z;->c:I

    .line 21
    .line 22
    :goto_15
    add-int/2addr v4, v3

    .line 23
    if-nez v1, :cond_1a

    .line 24
    .line 25
    move v3, v2

    .line 26
    goto :goto_1c

    .line 27
    :cond_1a
    iget v3, v1, Landroidx/fragment/app/z;->d:I

    .line 28
    .line 29
    :goto_1c
    add-int/2addr v3, v4

    .line 30
    if-nez v1, :cond_21

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    iget v1, v1, Landroidx/fragment/app/z;->e:I

    .line 35
    .line 36
    :goto_23
    add-int/2addr v1, v3

    .line 37
    if-lez v1, :cond_4a

    .line 38
    .line 39
    const v1, 0x7f0900fb

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    if-nez v3, :cond_32

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_32
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/fragment/app/c0;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 58
    .line 59
    if-nez p1, :cond_3d

    .line 60
    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    iget-boolean v2, p1, Landroidx/fragment/app/z;->a:Z

    .line 63
    .line 64
    :goto_3f
    iget-object p1, v0, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 65
    .line 66
    if-nez p1, :cond_44

    .line 67
    .line 68
    goto :goto_4a

    .line 69
    :cond_44
    invoke-virtual {v0}, Landroidx/fragment/app/c0;->b()Landroidx/fragment/app/z;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-boolean v2, p1, Landroidx/fragment/app/z;->a:Z

    .line 74
    .line 75
    :cond_4a
    :goto_4a
    return-void
.end method

.method public final b(Landroidx/fragment/app/g0;Lh8/b;Landroidx/fragment/app/c0;)V
    .registers 9

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 2
    .line 3
    if-nez v0, :cond_155

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/fragment/app/y0;->x:Lh8/b;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/fragment/app/y0;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    if-eqz p3, :cond_17

    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/s0;

    .line 16
    .line 17
    invoke-direct {v0, p3}, Landroidx/fragment/app/s0;-><init>(Landroidx/fragment/app/c0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_1c

    .line 24
    :cond_17
    if-eqz p1, :cond_1c

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    :cond_1c
    :goto_1c
    iget-object p2, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 30
    .line 31
    if-eqz p2, :cond_23

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->e0()V

    .line 34
    .line 35
    .line 36
    :cond_23
    if-eqz p1, :cond_37

    .line 37
    .line 38
    iget-object p2, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 39
    .line 40
    invoke-virtual {p2}, Lb/p;->getOnBackPressedDispatcher()Lb/i0;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Landroidx/fragment/app/y0;->g:Lb/i0;

    .line 45
    .line 46
    if-eqz p3, :cond_31

    .line 47
    .line 48
    move-object v0, p3

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move-object v0, p1

    .line 51
    :goto_32
    iget-object v1, p0, Landroidx/fragment/app/y0;->j:Landroidx/fragment/app/p0;

    .line 52
    .line 53
    invoke-virtual {p2, v0, v1}, Lb/i0;->a(Landroidx/lifecycle/t;Lb/y;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    const/4 p2, 0x0

    .line 57
    if-eqz p3, :cond_59

    .line 58
    .line 59
    iget-object p1, p3, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 60
    .line 61
    iget-object p1, p1, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 62
    .line 63
    iget-object v0, p1, Landroidx/fragment/app/c1;->c:Ljava/util/HashMap;

    .line 64
    .line 65
    iget-object v1, p3, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroidx/fragment/app/c1;

    .line 72
    .line 73
    if-nez v1, :cond_56

    .line 74
    .line 75
    new-instance v1, Landroidx/fragment/app/c1;

    .line 76
    .line 77
    iget-boolean p1, p1, Landroidx/fragment/app/c1;->e:Z

    .line 78
    .line 79
    invoke-direct {v1, p1}, Landroidx/fragment/app/c1;-><init>(Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p3, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_56
    iput-object v1, p0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 88
    .line 89
    goto :goto_7a

    .line 90
    :cond_59
    if-eqz p1, :cond_73

    .line 91
    .line 92
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 93
    .line 94
    invoke-virtual {p1}, Lb/p;->getViewModelStore()Landroidx/lifecycle/s0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance v0, Lk1/h;

    .line 99
    .line 100
    sget-object v1, Landroidx/fragment/app/c1;->h:Landroidx/fragment/app/b1;

    .line 101
    .line 102
    invoke-direct {v0, p1, v1}, Lk1/h;-><init>(Landroidx/lifecycle/s0;Landroidx/lifecycle/r0;)V

    .line 103
    .line 104
    .line 105
    const-class p1, Landroidx/fragment/app/c1;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lk1/h;->r(Ljava/lang/Class;)Landroidx/lifecycle/p0;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroidx/fragment/app/c1;

    .line 112
    .line 113
    iput-object p1, p0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 114
    .line 115
    goto :goto_7a

    .line 116
    :cond_73
    new-instance p1, Landroidx/fragment/app/c1;

    .line 117
    .line 118
    invoke-direct {p1, p2}, Landroidx/fragment/app/c1;-><init>(Z)V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 122
    .line 123
    :goto_7a
    iget-object p1, p0, Landroidx/fragment/app/y0;->O:Landroidx/fragment/app/c1;

    .line 124
    .line 125
    iget-boolean v0, p0, Landroidx/fragment/app/y0;->H:Z

    .line 126
    .line 127
    if-nez v0, :cond_84

    .line 128
    .line 129
    iget-boolean v0, p0, Landroidx/fragment/app/y0;->I:Z

    .line 130
    .line 131
    if-eqz v0, :cond_85

    .line 132
    .line 133
    :cond_84
    const/4 p2, 0x1

    .line 134
    :cond_85
    iput-boolean p2, p1, Landroidx/fragment/app/c1;->g:Z

    .line 135
    .line 136
    iget-object p2, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 137
    .line 138
    iput-object p1, p2, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 139
    .line 140
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 141
    .line 142
    if-eqz p1, :cond_ae

    .line 143
    .line 144
    if-nez p3, :cond_ae

    .line 145
    .line 146
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 147
    .line 148
    invoke-virtual {p1}, Lb/p;->getSavedStateRegistry()Le1/e;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    new-instance p2, Landroidx/fragment/app/d0;

    .line 153
    .line 154
    move-object v0, p0

    .line 155
    check-cast v0, Landroidx/fragment/app/z0;

    .line 156
    .line 157
    const/4 v1, 0x1

    .line 158
    invoke-direct {p2, v1, v0}, Landroidx/fragment/app/d0;-><init>(ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    const-string v0, "android:support:fragments"

    .line 162
    .line 163
    invoke-virtual {p1, v0, p2}, Le1/e;->c(Ljava/lang/String;Le1/d;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Le1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_ae

    .line 171
    .line 172
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->U(Landroid/os/Bundle;)V

    .line 173
    .line 174
    .line 175
    :cond_ae
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 176
    .line 177
    if-eqz p1, :cond_11b

    .line 178
    .line 179
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 180
    .line 181
    invoke-virtual {p1}, Lb/p;->getActivityResultRegistry()Ld/h;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    if-eqz p3, :cond_c8

    .line 186
    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    iget-object v0, p3, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 193
    .line 194
    const-string v1, ":"

    .line 195
    .line 196
    invoke-static {p2, v0, v1}, Lq2/x;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    goto :goto_ca

    .line 201
    :cond_c8
    const-string p2, ""

    .line 202
    .line 203
    :goto_ca
    const-string v0, "FragmentManager:"

    .line 204
    .line 205
    invoke-static {v0, p2}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    const-string v0, "StartActivityForResult"

    .line 210
    .line 211
    invoke-static {p2, v0}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v1, Landroidx/fragment/app/t0;

    .line 216
    .line 217
    const/4 v2, 0x2

    .line 218
    invoke-direct {v1, v2}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 219
    .line 220
    .line 221
    new-instance v2, Lo5/c;

    .line 222
    .line 223
    move-object v3, p0

    .line 224
    check-cast v3, Landroidx/fragment/app/z0;

    .line 225
    .line 226
    const/4 v4, 0x2

    .line 227
    invoke-direct {v2, v4, v3}, Lo5/c;-><init>(ILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0, v1, v2}, Ld/h;->d(Ljava/lang/String;Le/a;Ld/b;)Ld/g;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iput-object v0, p0, Landroidx/fragment/app/y0;->C:Ld/g;

    .line 235
    .line 236
    const-string v0, "StartIntentSenderForResult"

    .line 237
    .line 238
    invoke-static {p2, v0}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    new-instance v1, Landroidx/fragment/app/t0;

    .line 243
    .line 244
    const/4 v2, 0x0

    .line 245
    invoke-direct {v1, v2}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 246
    .line 247
    .line 248
    new-instance v2, Landroidx/fragment/app/o0;

    .line 249
    .line 250
    const/4 v4, 0x1

    .line 251
    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/z0;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0, v1, v2}, Ld/h;->d(Ljava/lang/String;Le/a;Ld/b;)Ld/g;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    iput-object v0, p0, Landroidx/fragment/app/y0;->D:Ld/g;

    .line 259
    .line 260
    const-string v0, "RequestPermissions"

    .line 261
    .line 262
    invoke-static {p2, v0}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    new-instance v0, Landroidx/fragment/app/t0;

    .line 267
    .line 268
    const/4 v1, 0x1

    .line 269
    invoke-direct {v0, v1}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Landroidx/fragment/app/o0;

    .line 273
    .line 274
    const/4 v2, 0x0

    .line 275
    invoke-direct {v1, v3, v2}, Landroidx/fragment/app/o0;-><init>(Landroidx/fragment/app/z0;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, p2, v0, v1}, Ld/h;->d(Ljava/lang/String;Le/a;Ld/b;)Ld/g;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    iput-object p1, p0, Landroidx/fragment/app/y0;->E:Ld/g;

    .line 283
    .line 284
    :cond_11b
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 285
    .line 286
    if-eqz p1, :cond_126

    .line 287
    .line 288
    iget-object p2, p0, Landroidx/fragment/app/y0;->q:Landroidx/fragment/app/n0;

    .line 289
    .line 290
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 291
    .line 292
    invoke-virtual {p1, p2}, Lb/p;->addOnConfigurationChangedListener(Li0/a;)V

    .line 293
    .line 294
    .line 295
    :cond_126
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 296
    .line 297
    if-eqz p1, :cond_131

    .line 298
    .line 299
    iget-object p2, p0, Landroidx/fragment/app/y0;->r:Landroidx/fragment/app/n0;

    .line 300
    .line 301
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 302
    .line 303
    invoke-virtual {p1, p2}, Lb/p;->addOnTrimMemoryListener(Li0/a;)V

    .line 304
    .line 305
    .line 306
    :cond_131
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 307
    .line 308
    if-eqz p1, :cond_13c

    .line 309
    .line 310
    iget-object p2, p0, Landroidx/fragment/app/y0;->s:Landroidx/fragment/app/n0;

    .line 311
    .line 312
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 313
    .line 314
    invoke-virtual {p1, p2}, Lb/p;->addOnMultiWindowModeChangedListener(Li0/a;)V

    .line 315
    .line 316
    .line 317
    :cond_13c
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 318
    .line 319
    if-eqz p1, :cond_147

    .line 320
    .line 321
    iget-object p2, p0, Landroidx/fragment/app/y0;->t:Landroidx/fragment/app/n0;

    .line 322
    .line 323
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 324
    .line 325
    invoke-virtual {p1, p2}, Lb/p;->addOnPictureInPictureModeChangedListener(Li0/a;)V

    .line 326
    .line 327
    .line 328
    :cond_147
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 329
    .line 330
    if-eqz p1, :cond_154

    .line 331
    .line 332
    if-nez p3, :cond_154

    .line 333
    .line 334
    iget-object p2, p0, Landroidx/fragment/app/y0;->u:Landroidx/fragment/app/q0;

    .line 335
    .line 336
    iget-object p1, p1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 337
    .line 338
    invoke-virtual {p1, p2}, Lb/p;->addMenuProvider(Lj0/m;)V

    .line 339
    .line 340
    .line 341
    :cond_154
    return-void

    .line 342
    :cond_155
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 343
    .line 344
    const-string p2, "Already attached"

    .line 345
    .line 346
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw p1
.end method

.method public final c(Landroidx/fragment/app/c0;)V
    .registers 6

    .line 1
    const/4 v0, 0x2

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
    if-eqz v1, :cond_1a

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "attach: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-boolean v1, p1, Landroidx/fragment/app/c0;->J:Z

    .line 28
    .line 29
    if-eqz v1, :cond_4a

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p1, Landroidx/fragment/app/c0;->J:Z

    .line 33
    .line 34
    iget-boolean v1, p1, Landroidx/fragment/app/c0;->k:Z

    .line 35
    .line 36
    if-nez v1, :cond_4a

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/y;->j(Landroidx/fragment/app/c0;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/fragment/app/y0;->J(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_41

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "add from attach: "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_41
    invoke-static {p1}, Landroidx/fragment/app/y0;->K(Landroidx/fragment/app/c0;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4a

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Landroidx/fragment/app/y0;->G:Z

    .line 74
    .line 75
    :cond_4a
    return-void
.end method

.method public final c0()V
    .registers 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->r()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :cond_c
    :goto_c
    if-ge v3, v1, :cond_2a

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    check-cast v4, Landroidx/fragment/app/g1;

    .line 22
    .line 23
    iget-object v5, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 24
    .line 25
    iget-boolean v6, v5, Landroidx/fragment/app/c0;->Q:Z

    .line 26
    .line 27
    if-eqz v6, :cond_c

    .line 28
    .line 29
    iget-boolean v6, p0, Landroidx/fragment/app/y0;->b:Z

    .line 30
    .line 31
    if-eqz v6, :cond_24

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    iput-boolean v4, p0, Landroidx/fragment/app/y0;->K:Z

    .line 35
    .line 36
    goto :goto_c

    .line 37
    :cond_24
    iput-boolean v2, v5, Landroidx/fragment/app/c0;->Q:Z

    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/fragment/app/g1;->k()V

    .line 40
    .line 41
    .line 42
    goto :goto_c

    .line 43
    :cond_2a
    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final d0(Ljava/lang/IllegalStateException;)V
    .registers 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const-string v0, "Activity state:"

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/fragment/app/j1;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/fragment/app/j1;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v2, Ljava/io/PrintWriter;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 26
    .line 27
    const-string v3, "Failed dumping state"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, "  "

    .line 32
    .line 33
    if-eqz v0, :cond_2f

    .line 34
    .line 35
    :try_start_22
    new-array v4, v4, [Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 38
    .line 39
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/h0;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a

    .line 40
    .line 41
    .line 42
    goto :goto_39

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    goto :goto_39

    .line 48
    :cond_2f
    :try_start_2f
    new-array v0, v4, [Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/y0;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    .line 51
    .line 52
    .line 53
    goto :goto_39

    .line 54
    :catch_35
    move-exception v0

    .line 55
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :goto_39
    throw p1
.end method

.method public final e()Ljava/util/HashSet;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/firebase/messaging/y;->r()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    :cond_10
    :goto_10
    if-ge v3, v2, :cond_43

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    check-cast v4, Landroidx/fragment/app/g1;

    .line 26
    .line 27
    iget-object v4, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 28
    .line 29
    iget-object v4, v4, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v4, :cond_10

    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->H()Le5/e;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "factory"

    .line 38
    .line 39
    invoke-static {v6, v5}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const v5, 0x7f0900c8

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    instance-of v7, v6, Landroidx/fragment/app/o;

    .line 50
    .line 51
    if-eqz v7, :cond_37

    .line 52
    .line 53
    check-cast v6, Landroidx/fragment/app/o;

    .line 54
    .line 55
    goto :goto_3f

    .line 56
    :cond_37
    new-instance v6, Landroidx/fragment/app/o;

    .line 57
    .line 58
    invoke-direct {v6, v4}, Landroidx/fragment/app/o;-><init>(Landroid/view/ViewGroup;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_3f
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_10

    .line 68
    :cond_43
    return-object v0
.end method

.method public final e0()V
    .registers 6

    .line 1
    const-string v0, "FragmentManager "

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_5
    iget-object v2, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_3b

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/fragment/app/y0;->j:Landroidx/fragment/app/p0;

    .line 17
    .line 18
    iput-boolean v4, v2, Lb/y;->a:Z

    .line 19
    .line 20
    iget-object v2, v2, Lb/y;->c:Lb/h0;

    .line 21
    .line 22
    if-eqz v2, :cond_1a

    .line 23
    .line 24
    invoke-interface {v2}, Lc7/a;->b()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_1a
    invoke-static {v3}, Landroidx/fragment/app/y0;->J(I)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_39

    .line 32
    .line 33
    const-string v2, "FragmentManager"

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, " enabling OnBackPressedCallback, caused by non-empty pending actions"

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    goto :goto_39

    .line 56
    :catchall_37
    move-exception v0

    .line 57
    goto :goto_84

    .line 58
    :cond_39
    :goto_39
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_37

    .line 61
    iget-object v0, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-object v1, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    if-eqz v1, :cond_49

    .line 71
    .line 72
    move v1, v4

    .line 73
    goto :goto_4a

    .line 74
    :cond_49
    move v1, v2

    .line 75
    :goto_4a
    add-int/2addr v0, v1

    .line 76
    if-lez v0, :cond_56

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 79
    .line 80
    invoke-static {v0}, Landroidx/fragment/app/y0;->N(Landroidx/fragment/app/c0;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_56

    .line 85
    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v4, v2

    .line 88
    :goto_57
    invoke-static {v3}, Landroidx/fragment/app/y0;->J(I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_78

    .line 93
    .line 94
    const-string v0, "FragmentManager"

    .line 95
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "OnBackPressedCallback for FragmentManager "

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v2, " enabled state is "

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :cond_78
    iget-object v0, p0, Landroidx/fragment/app/y0;->j:Landroidx/fragment/app/p0;

    .line 122
    .line 123
    iput-boolean v4, v0, Lb/y;->a:Z

    .line 124
    .line 125
    iget-object v0, v0, Lb/y;->c:Lb/h0;

    .line 126
    .line 127
    if-eqz v0, :cond_83

    .line 128
    .line 129
    invoke-interface {v0}, Lc7/a;->b()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_83
    return-void

    .line 133
    :goto_84
    :try_start_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_37

    .line 134
    throw v0
.end method

.method public final f(Ljava/util/ArrayList;II)Ljava/util/HashSet;
    .registers 9

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_5
    if-ge p2, p3, :cond_31

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/fragment/app/a;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    :cond_14
    :goto_14
    if-ge v3, v2, :cond_2e

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    check-cast v4, Landroidx/fragment/app/h1;

    .line 30
    .line 31
    iget-object v4, v4, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 32
    .line 33
    if-eqz v4, :cond_14

    .line 34
    .line 35
    iget-object v4, v4, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 36
    .line 37
    if-eqz v4, :cond_14

    .line 38
    .line 39
    invoke-static {v4, p0}, Landroidx/fragment/app/o;->i(Landroid/view/ViewGroup;Landroidx/fragment/app/y0;)Landroidx/fragment/app/o;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_14

    .line 47
    :cond_2e
    add-int/lit8 p2, p2, 0x1

    .line 48
    .line 49
    goto :goto_5

    .line 50
    :cond_31
    return-object v0
.end method

.method public final g(Landroidx/fragment/app/c0;)Landroidx/fragment/app/g1;
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/fragment/app/g1;

    .line 14
    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_11
    new-instance v0, Landroidx/fragment/app/g1;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/fragment/app/y0;->o:Lcom/google/android/gms/internal/measurement/y4;

    .line 21
    .line 22
    invoke-direct {v0, v2, v1, p1}, Landroidx/fragment/app/g1;-><init>(Lcom/google/android/gms/internal/measurement/y4;Lcom/google/firebase/messaging/y;Landroidx/fragment/app/c0;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Landroidx/fragment/app/g1;->m(Ljava/lang/ClassLoader;)V

    .line 34
    .line 35
    .line 36
    iget p1, p0, Landroidx/fragment/app/y0;->v:I

    .line 37
    .line 38
    iput p1, v0, Landroidx/fragment/app/g1;->e:I

    .line 39
    .line 40
    return-object v0
.end method

.method public final h(Landroidx/fragment/app/c0;)V
    .registers 6

    .line 1
    const-string v0, "FragmentManager"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_1a

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "detach: "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-boolean v2, p1, Landroidx/fragment/app/c0;->J:Z

    .line 28
    .line 29
    if-nez v2, :cond_5d

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p1, Landroidx/fragment/app/c0;->J:Z

    .line 33
    .line 34
    iget-boolean v3, p1, Landroidx/fragment/app/c0;->k:Z

    .line 35
    .line 36
    if-eqz v3, :cond_5d

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_3c

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v3, "remove from detach: "

    .line 47
    .line 48
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_3c
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    monitor-enter v1

    .line 68
    :try_start_43
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_5a

    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->k:Z

    .line 78
    .line 79
    invoke-static {p1}, Landroidx/fragment/app/y0;->K(Landroidx/fragment/app/c0;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_56

    .line 84
    .line 85
    iput-boolean v2, p0, Landroidx/fragment/app/y0;->G:Z

    .line 86
    .line 87
    :cond_56
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->a0(Landroidx/fragment/app/c0;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catchall_5a
    move-exception p1

    .line 92
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .line 93
    throw p1

    .line 94
    :cond_5d
    return-void
.end method

.method public final i(ZLandroid/content/res/Configuration;)V
    .registers 6

    .line 1
    if-eqz p1, :cond_13

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_13

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string p2, "Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->d0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_37

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/fragment/app/c0;

    .line 41
    .line 42
    if-eqz v1, :cond_1d

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Landroidx/fragment/app/c0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    .line 46
    .line 47
    if-eqz p1, :cond_1d

    .line 48
    .line 49
    iget-object v1, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2, p2}, Landroidx/fragment/app/y0;->i(ZLandroid/content/res/Configuration;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1d

    .line 56
    :cond_37
    return-void
.end method

.method public final j()Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/y0;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_7

    .line 6
    .line 7
    goto :goto_2e

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2e

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/c0;

    .line 29
    .line 30
    if-eqz v3, :cond_11

    .line 31
    .line 32
    iget-boolean v4, v3, Landroidx/fragment/app/c0;->I:Z

    .line 33
    .line 34
    if-nez v4, :cond_2a

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/fragment/app/y0;->j()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v3, v1

    .line 44
    :goto_2b
    if-eqz v3, :cond_11

    .line 45
    .line 46
    return v2

    .line 47
    :cond_2e
    :goto_2e
    return v1
.end method

.method public final k()Z
    .registers 8

    .line 1
    iget v0, p0, Landroidx/fragment/app/y0;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_7

    .line 6
    .line 7
    return v1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v1

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_41

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Landroidx/fragment/app/c0;

    .line 31
    .line 32
    if-eqz v5, :cond_13

    .line 33
    .line 34
    invoke-static {v5}, Landroidx/fragment/app/y0;->M(Landroidx/fragment/app/c0;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_13

    .line 39
    .line 40
    iget-boolean v6, v5, Landroidx/fragment/app/c0;->I:Z

    .line 41
    .line 42
    if-nez v6, :cond_32

    .line 43
    .line 44
    iget-object v6, v5, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/fragment/app/y0;->k()Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move v6, v1

    .line 52
    :goto_33
    if-eqz v6, :cond_13

    .line 53
    .line 54
    if-nez v3, :cond_3c

    .line 55
    .line 56
    new-instance v3, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    :cond_3c
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move v4, v2

    .line 65
    goto :goto_13

    .line 66
    :cond_41
    iget-object v0, p0, Landroidx/fragment/app/y0;->e:Ljava/util/ArrayList;

    .line 67
    .line 68
    if-eqz v0, :cond_63

    .line 69
    .line 70
    :goto_45
    iget-object v0, p0, Landroidx/fragment/app/y0;->e:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ge v1, v0, :cond_63

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/fragment/app/y0;->e:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroidx/fragment/app/c0;

    .line 85
    .line 86
    if-eqz v3, :cond_5d

    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_60

    .line 93
    .line 94
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    :cond_60
    add-int/lit8 v1, v1, 0x1

    .line 98
    .line 99
    goto :goto_45

    .line 100
    :cond_63
    iput-object v3, p0, Landroidx/fragment/app/y0;->e:Ljava/util/ArrayList;

    .line 101
    .line 102
    return v4
.end method

.method public final l()V
    .registers 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->J:Z

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->w()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 13
    .line 14
    if-eqz v1, :cond_16

    .line 15
    .line 16
    iget-object v1, v2, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroidx/fragment/app/c1;

    .line 19
    .line 20
    iget-boolean v1, v1, Landroidx/fragment/app/c1;->f:Z

    .line 21
    .line 22
    goto :goto_25

    .line 23
    :cond_16
    iget-object v1, v1, Landroidx/fragment/app/g0;->b:Landroidx/fragment/app/h0;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/fragment/app/m1;->d(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_24

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    xor-int/2addr v1, v0

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v1, v0

    .line 38
    :goto_25
    const/4 v3, 0x0

    .line 39
    if-eqz v1, :cond_57

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/fragment/app/y0;->l:Ljava/util/Map;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_57

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroidx/fragment/app/c;

    .line 62
    .line 63
    iget-object v4, v4, Landroidx/fragment/app/c;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    move v6, v3

    .line 70
    :goto_45
    if-ge v6, v5, :cond_32

    .line 71
    .line 72
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    check-cast v7, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, v2, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v8, Landroidx/fragment/app/c1;

    .line 83
    .line 84
    invoke-virtual {v8, v7, v3}, Landroidx/fragment/app/c1;->e(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_45

    .line 88
    :cond_57
    const/4 v1, -0x1

    .line 89
    invoke-virtual {p0, v1}, Landroidx/fragment/app/y0;->u(I)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 93
    .line 94
    if-eqz v1, :cond_61

    .line 95
    .line 96
    move v2, v0

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move v2, v3

    .line 99
    :goto_62
    if-eqz v2, :cond_6b

    .line 100
    .line 101
    iget-object v2, p0, Landroidx/fragment/app/y0;->r:Landroidx/fragment/app/n0;

    .line 102
    .line 103
    iget-object v1, v1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Lb/p;->removeOnTrimMemoryListener(Li0/a;)V

    .line 106
    .line 107
    .line 108
    :cond_6b
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 109
    .line 110
    if-eqz v1, :cond_71

    .line 111
    .line 112
    move v2, v0

    .line 113
    goto :goto_72

    .line 114
    :cond_71
    move v2, v3

    .line 115
    :goto_72
    if-eqz v2, :cond_7b

    .line 116
    .line 117
    iget-object v2, p0, Landroidx/fragment/app/y0;->q:Landroidx/fragment/app/n0;

    .line 118
    .line 119
    iget-object v1, v1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lb/p;->removeOnConfigurationChangedListener(Li0/a;)V

    .line 122
    .line 123
    .line 124
    :cond_7b
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 125
    .line 126
    if-eqz v1, :cond_81

    .line 127
    .line 128
    move v2, v0

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move v2, v3

    .line 131
    :goto_82
    if-eqz v2, :cond_8b

    .line 132
    .line 133
    iget-object v2, p0, Landroidx/fragment/app/y0;->s:Landroidx/fragment/app/n0;

    .line 134
    .line 135
    iget-object v1, v1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lb/p;->removeOnMultiWindowModeChangedListener(Li0/a;)V

    .line 138
    .line 139
    .line 140
    :cond_8b
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 141
    .line 142
    if-eqz v1, :cond_91

    .line 143
    .line 144
    move v2, v0

    .line 145
    goto :goto_92

    .line 146
    :cond_91
    move v2, v3

    .line 147
    :goto_92
    if-eqz v2, :cond_9b

    .line 148
    .line 149
    iget-object v2, p0, Landroidx/fragment/app/y0;->t:Landroidx/fragment/app/n0;

    .line 150
    .line 151
    iget-object v1, v1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Lb/p;->removeOnPictureInPictureModeChangedListener(Li0/a;)V

    .line 154
    .line 155
    .line 156
    :cond_9b
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 157
    .line 158
    if-eqz v1, :cond_a0

    .line 159
    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    move v0, v3

    .line 162
    :goto_a1
    if-eqz v0, :cond_ae

    .line 163
    .line 164
    iget-object v0, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 165
    .line 166
    if-nez v0, :cond_ae

    .line 167
    .line 168
    iget-object v0, p0, Landroidx/fragment/app/y0;->u:Landroidx/fragment/app/q0;

    .line 169
    .line 170
    iget-object v1, v1, Landroidx/fragment/app/g0;->e:Landroidx/fragment/app/h0;

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Lb/p;->removeMenuProvider(Lj0/m;)V

    .line 173
    .line 174
    .line 175
    :cond_ae
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 177
    .line 178
    iput-object v0, p0, Landroidx/fragment/app/y0;->x:Lh8/b;

    .line 179
    .line 180
    iput-object v0, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 181
    .line 182
    iget-object v1, p0, Landroidx/fragment/app/y0;->g:Lb/i0;

    .line 183
    .line 184
    if-eqz v1, :cond_d3

    .line 185
    .line 186
    iget-object v1, p0, Landroidx/fragment/app/y0;->j:Landroidx/fragment/app/p0;

    .line 187
    .line 188
    iget-object v1, v1, Lb/y;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    :goto_c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_d1

    .line 199
    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    check-cast v2, Lb/c;

    .line 205
    .line 206
    invoke-interface {v2}, Lb/c;->cancel()V

    .line 207
    .line 208
    .line 209
    goto :goto_c1

    .line 210
    :cond_d1
    iput-object v0, p0, Landroidx/fragment/app/y0;->g:Lb/i0;

    .line 211
    .line 212
    :cond_d3
    iget-object v0, p0, Landroidx/fragment/app/y0;->C:Ld/g;

    .line 213
    .line 214
    if-eqz v0, :cond_e4

    .line 215
    .line 216
    invoke-virtual {v0}, Ld/g;->b()V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Landroidx/fragment/app/y0;->D:Ld/g;

    .line 220
    .line 221
    invoke-virtual {v0}, Ld/g;->b()V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Landroidx/fragment/app/y0;->E:Ld/g;

    .line 225
    .line 226
    invoke-virtual {v0}, Ld/g;->b()V

    .line 227
    .line 228
    .line 229
    :cond_e4
    return-void
.end method

.method public final m(Z)V
    .registers 5

    .line 1
    if-eqz p1, :cond_13

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_13

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->d0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_36

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/fragment/app/c0;

    .line 41
    .line 42
    if-eqz v1, :cond_1d

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, v1, Landroidx/fragment/app/c0;->N:Z

    .line 46
    .line 47
    if-eqz p1, :cond_1d

    .line 48
    .line 49
    iget-object v1, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->m(Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_1d

    .line 55
    :cond_36
    return-void
.end method

.method public final n(Z)V
    .registers 5

    .line 1
    if-eqz p1, :cond_13

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_13

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->d0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_34

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/fragment/app/c0;

    .line 41
    .line 42
    if-eqz v1, :cond_1d

    .line 43
    .line 44
    if-eqz p1, :cond_1d

    .line 45
    .line 46
    iget-object v1, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->n(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1d

    .line 53
    :cond_34
    return-void
.end method

.method public final o()V
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->s()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :cond_b
    :goto_b
    if-ge v2, v1, :cond_20

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    check-cast v3, Landroidx/fragment/app/c0;

    .line 21
    .line 22
    if-eqz v3, :cond_b

    .line 23
    .line 24
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->l()Z

    .line 25
    .line 26
    .line 27
    iget-object v3, v3, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/fragment/app/y0;->o()V

    .line 30
    .line 31
    .line 32
    goto :goto_b

    .line 33
    :cond_20
    return-void
.end method

.method public final p()Z
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/y0;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_7

    .line 6
    .line 7
    goto :goto_2e

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2e

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroidx/fragment/app/c0;

    .line 29
    .line 30
    if-eqz v3, :cond_11

    .line 31
    .line 32
    iget-boolean v4, v3, Landroidx/fragment/app/c0;->I:Z

    .line 33
    .line 34
    if-nez v4, :cond_2a

    .line 35
    .line 36
    iget-object v3, v3, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/fragment/app/y0;->p()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    goto :goto_2b

    .line 43
    :cond_2a
    move v3, v1

    .line 44
    :goto_2b
    if-eqz v3, :cond_11

    .line 45
    .line 46
    return v2

    .line 47
    :cond_2e
    :goto_2e
    return v1
.end method

.method public final q()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/y0;->v:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge v0, v1, :cond_6

    .line 5
    .line 6
    goto :goto_28

    .line 7
    :cond_6
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_28

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/fragment/app/c0;

    .line 28
    .line 29
    if-eqz v1, :cond_10

    .line 30
    .line 31
    iget-boolean v2, v1, Landroidx/fragment/app/c0;->I:Z

    .line 32
    .line 33
    if-nez v2, :cond_10

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/fragment/app/y0;->q()V

    .line 38
    .line 39
    .line 40
    goto :goto_10

    .line 41
    :cond_28
    :goto_28
    return-void
.end method

.method public final r(Landroidx/fragment/app/c0;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_33

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_33

    .line 16
    .line 17
    iget-object v0, p1, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroidx/fragment/app/y0;->N(Landroidx/fragment/app/c0;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p1, Landroidx/fragment/app/c0;->j:Ljava/lang/Boolean;

    .line 27
    .line 28
    if-eqz v1, :cond_23

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq v1, v0, :cond_33

    .line 35
    .line 36
    :cond_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p1, Landroidx/fragment/app/c0;->j:Ljava/lang/Boolean;

    .line 41
    .line 42
    iget-object p1, p1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroidx/fragment/app/y0;->e0()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p1, Landroidx/fragment/app/y0;->z:Landroidx/fragment/app/c0;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroidx/fragment/app/y0;->r(Landroidx/fragment/app/c0;)V

    .line 50
    .line 51
    .line 52
    :cond_33
    return-void
.end method

.method public final s(Z)V
    .registers 5

    .line 1
    if-eqz p1, :cond_13

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    goto :goto_13

    .line 8
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->d0(Ljava/lang/IllegalStateException;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_34

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/fragment/app/c0;

    .line 41
    .line 42
    if-eqz v1, :cond_1d

    .line 43
    .line 44
    if-eqz p1, :cond_1d

    .line 45
    .line 46
    iget-object v1, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Landroidx/fragment/app/y0;->s(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_1d

    .line 53
    :cond_34
    return-void
.end method

.method public final t()Z
    .registers 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/y0;->v:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, v2, :cond_7

    .line 6
    .line 7
    return v1

    .line 8
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->t()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move v3, v1

    .line 19
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_36

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Landroidx/fragment/app/c0;

    .line 30
    .line 31
    if-eqz v4, :cond_12

    .line 32
    .line 33
    invoke-static {v4}, Landroidx/fragment/app/y0;->M(Landroidx/fragment/app/c0;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_12

    .line 38
    .line 39
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->I:Z

    .line 40
    .line 41
    if-nez v5, :cond_31

    .line 42
    .line 43
    iget-object v4, v4, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/fragment/app/y0;->t()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    move v4, v1

    .line 51
    :goto_32
    if-eqz v4, :cond_12

    .line 52
    .line 53
    move v3, v2

    .line 54
    goto :goto_12

    .line 55
    :cond_36
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "FragmentManager{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " in "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 30
    .line 31
    const-string v2, "}"

    .line 32
    .line 33
    const-string v3, "{"

    .line 34
    .line 35
    if-eqz v1, :cond_43

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    goto :goto_6b

    .line 68
    :cond_43
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 69
    .line 70
    if-eqz v1, :cond_66

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_6b

    .line 103
    :cond_66
    const-string v1, "null"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_6b
    const-string v1, "}}"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    return-object v0
.end method

.method public final u(I)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/y0;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_23

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/fragment/app/g1;

    .line 30
    .line 31
    if-eqz v3, :cond_12

    .line 32
    .line 33
    iput p1, v3, Landroidx/fragment/app/g1;->e:I

    .line 34
    .line 35
    goto :goto_12

    .line 36
    :cond_23
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/y0;->O(IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->e()Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_40

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroidx/fragment/app/o;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroidx/fragment/app/o;->h()V
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_3e

    .line 60
    .line 61
    .line 62
    goto :goto_2e

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    goto :goto_46

    .line 65
    :cond_40
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->b:Z

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/y0;->z(Z)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_46
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->b:Z

    .line 72
    .line 73
    throw p1
.end method

.method public final v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    .line 1
    const-string v0, "    "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    const-string v3, "    "

    .line 14
    .line 15
    invoke-static {p1, v3}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v1, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_282

    .line 28
    .line 29
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v4, "Active Fragments:"

    .line 33
    .line 34
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_282

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroidx/fragment/app/g1;

    .line 56
    .line 57
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-eqz v4, :cond_27b

    .line 61
    .line 62
    iget-object v4, v4, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 63
    .line 64
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v5, "mFragmentId=#"

    .line 74
    .line 75
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget v5, v4, Landroidx/fragment/app/c0;->F:I

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v5, " mContainerId=#"

    .line 88
    .line 89
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v5, v4, Landroidx/fragment/app/c0;->G:I

    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v5, " mTag="

    .line 102
    .line 103
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v5, v4, Landroidx/fragment/app/c0;->H:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v5, "mState="

    .line 115
    .line 116
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v5, v4, Landroidx/fragment/app/c0;->a:I

    .line 120
    .line 121
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 122
    .line 123
    .line 124
    const-string v5, " mWho="

    .line 125
    .line 126
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v5, v4, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string v5, " mBackStackNesting="

    .line 135
    .line 136
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget v5, v4, Landroidx/fragment/app/c0;->A:I

    .line 140
    .line 141
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v5, "mAdded="

    .line 148
    .line 149
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->k:Z

    .line 153
    .line 154
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 155
    .line 156
    .line 157
    const-string v5, " mRemoving="

    .line 158
    .line 159
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->l:Z

    .line 163
    .line 164
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 165
    .line 166
    .line 167
    const-string v5, " mFromLayout="

    .line 168
    .line 169
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->v:Z

    .line 173
    .line 174
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 175
    .line 176
    .line 177
    const-string v5, " mInLayout="

    .line 178
    .line 179
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->w:Z

    .line 183
    .line 184
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v5, "mHidden="

    .line 191
    .line 192
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->I:Z

    .line 196
    .line 197
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 198
    .line 199
    .line 200
    const-string v5, " mDetached="

    .line 201
    .line 202
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->J:Z

    .line 206
    .line 207
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 208
    .line 209
    .line 210
    const-string v5, " mMenuVisible="

    .line 211
    .line 212
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-boolean v5, v4, Landroidx/fragment/app/c0;->M:Z

    .line 216
    .line 217
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Z)V

    .line 218
    .line 219
    .line 220
    const-string v5, " mHasMenu="

    .line 221
    .line 222
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v6, "mRetainInstance="

    .line 233
    .line 234
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    iget-boolean v6, v4, Landroidx/fragment/app/c0;->K:Z

    .line 238
    .line 239
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 240
    .line 241
    .line 242
    const-string v6, " mUserVisibleHint="

    .line 243
    .line 244
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-boolean v6, v4, Landroidx/fragment/app/c0;->R:Z

    .line 248
    .line 249
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 250
    .line 251
    .line 252
    iget-object v6, v4, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 253
    .line 254
    if-eqz v6, :cond_10c

    .line 255
    .line 256
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string v6, "mFragmentManager="

    .line 260
    .line 261
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v6, v4, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 265
    .line 266
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_10c
    iget-object v6, v4, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 270
    .line 271
    if-eqz v6, :cond_11d

    .line 272
    .line 273
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string v6, "mHost="

    .line 277
    .line 278
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v6, v4, Landroidx/fragment/app/c0;->C:Landroidx/fragment/app/g0;

    .line 282
    .line 283
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    :cond_11d
    iget-object v6, v4, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 287
    .line 288
    if-eqz v6, :cond_12e

    .line 289
    .line 290
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    const-string v6, "mParentFragment="

    .line 294
    .line 295
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v6, v4, Landroidx/fragment/app/c0;->E:Landroidx/fragment/app/c0;

    .line 299
    .line 300
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_12e
    iget-object v6, v4, Landroidx/fragment/app/c0;->f:Landroid/os/Bundle;

    .line 304
    .line 305
    if-eqz v6, :cond_13f

    .line 306
    .line 307
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v6, "mArguments="

    .line 311
    .line 312
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v6, v4, Landroidx/fragment/app/c0;->f:Landroid/os/Bundle;

    .line 316
    .line 317
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_13f
    iget-object v6, v4, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 321
    .line 322
    if-eqz v6, :cond_150

    .line 323
    .line 324
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v6, "mSavedFragmentState="

    .line 328
    .line 329
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v6, v4, Landroidx/fragment/app/c0;->b:Landroid/os/Bundle;

    .line 333
    .line 334
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    :cond_150
    iget-object v6, v4, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 338
    .line 339
    if-eqz v6, :cond_161

    .line 340
    .line 341
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v6, "mSavedViewState="

    .line 345
    .line 346
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    iget-object v6, v4, Landroidx/fragment/app/c0;->c:Landroid/util/SparseArray;

    .line 350
    .line 351
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :cond_161
    iget-object v6, v4, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 355
    .line 356
    if-eqz v6, :cond_172

    .line 357
    .line 358
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    const-string v6, "mSavedViewRegistryState="

    .line 362
    .line 363
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v6, v4, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 367
    .line 368
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    :cond_172
    iget-object v6, v4, Landroidx/fragment/app/c0;->g:Landroidx/fragment/app/c0;

    .line 372
    .line 373
    if-eqz v6, :cond_177

    .line 374
    .line 375
    goto :goto_187

    .line 376
    :cond_177
    iget-object v6, v4, Landroidx/fragment/app/c0;->B:Landroidx/fragment/app/y0;

    .line 377
    .line 378
    if-eqz v6, :cond_186

    .line 379
    .line 380
    iget-object v7, v4, Landroidx/fragment/app/c0;->h:Ljava/lang/String;

    .line 381
    .line 382
    if-eqz v7, :cond_186

    .line 383
    .line 384
    iget-object v6, v6, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 385
    .line 386
    invoke-virtual {v6, v7}, Lcom/google/firebase/messaging/y;->m(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 387
    .line 388
    .line 389
    move-result-object v6

    .line 390
    goto :goto_187

    .line 391
    :cond_186
    const/4 v6, 0x0

    .line 392
    :goto_187
    if-eqz v6, :cond_19e

    .line 393
    .line 394
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    const-string v7, "mTarget="

    .line 398
    .line 399
    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    const-string v6, " mTargetRequestCode="

    .line 406
    .line 407
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget v6, v4, Landroidx/fragment/app/c0;->i:I

    .line 411
    .line 412
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 413
    .line 414
    .line 415
    :cond_19e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    const-string v6, "mPopDirection="

    .line 419
    .line 420
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 424
    .line 425
    if-nez v6, :cond_1ac

    .line 426
    .line 427
    move v6, v5

    .line 428
    goto :goto_1ae

    .line 429
    :cond_1ac
    iget-boolean v6, v6, Landroidx/fragment/app/z;->a:Z

    .line 430
    .line 431
    :goto_1ae
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 432
    .line 433
    .line 434
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 435
    .line 436
    if-nez v6, :cond_1b7

    .line 437
    .line 438
    move v6, v5

    .line 439
    goto :goto_1b9

    .line 440
    :cond_1b7
    iget v6, v6, Landroidx/fragment/app/z;->b:I

    .line 441
    .line 442
    :goto_1b9
    if-eqz v6, :cond_1ce

    .line 443
    .line 444
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    const-string v6, "getEnterAnim="

    .line 448
    .line 449
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 453
    .line 454
    if-nez v6, :cond_1c9

    .line 455
    .line 456
    move v6, v5

    .line 457
    goto :goto_1cb

    .line 458
    :cond_1c9
    iget v6, v6, Landroidx/fragment/app/z;->b:I

    .line 459
    .line 460
    :goto_1cb
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 461
    .line 462
    .line 463
    :cond_1ce
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 464
    .line 465
    if-nez v6, :cond_1d4

    .line 466
    .line 467
    move v6, v5

    .line 468
    goto :goto_1d6

    .line 469
    :cond_1d4
    iget v6, v6, Landroidx/fragment/app/z;->c:I

    .line 470
    .line 471
    :goto_1d6
    if-eqz v6, :cond_1eb

    .line 472
    .line 473
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    const-string v6, "getExitAnim="

    .line 477
    .line 478
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 482
    .line 483
    if-nez v6, :cond_1e6

    .line 484
    .line 485
    move v6, v5

    .line 486
    goto :goto_1e8

    .line 487
    :cond_1e6
    iget v6, v6, Landroidx/fragment/app/z;->c:I

    .line 488
    .line 489
    :goto_1e8
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 490
    .line 491
    .line 492
    :cond_1eb
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 493
    .line 494
    if-nez v6, :cond_1f1

    .line 495
    .line 496
    move v6, v5

    .line 497
    goto :goto_1f3

    .line 498
    :cond_1f1
    iget v6, v6, Landroidx/fragment/app/z;->d:I

    .line 499
    .line 500
    :goto_1f3
    if-eqz v6, :cond_208

    .line 501
    .line 502
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    const-string v6, "getPopEnterAnim="

    .line 506
    .line 507
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 511
    .line 512
    if-nez v6, :cond_203

    .line 513
    .line 514
    move v6, v5

    .line 515
    goto :goto_205

    .line 516
    :cond_203
    iget v6, v6, Landroidx/fragment/app/z;->d:I

    .line 517
    .line 518
    :goto_205
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 519
    .line 520
    .line 521
    :cond_208
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 522
    .line 523
    if-nez v6, :cond_20e

    .line 524
    .line 525
    move v6, v5

    .line 526
    goto :goto_210

    .line 527
    :cond_20e
    iget v6, v6, Landroidx/fragment/app/z;->e:I

    .line 528
    .line 529
    :goto_210
    if-eqz v6, :cond_224

    .line 530
    .line 531
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const-string v6, "getPopExitAnim="

    .line 535
    .line 536
    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    iget-object v6, v4, Landroidx/fragment/app/c0;->S:Landroidx/fragment/app/z;

    .line 540
    .line 541
    if-nez v6, :cond_21f

    .line 542
    .line 543
    goto :goto_221

    .line 544
    :cond_21f
    iget v5, v6, Landroidx/fragment/app/z;->e:I

    .line 545
    .line 546
    :goto_221
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 547
    .line 548
    .line 549
    :cond_224
    iget-object v5, v4, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 550
    .line 551
    if-eqz v5, :cond_235

    .line 552
    .line 553
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    const-string v5, "mContainer="

    .line 557
    .line 558
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v5, v4, Landroidx/fragment/app/c0;->O:Landroid/view/ViewGroup;

    .line 562
    .line 563
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    :cond_235
    iget-object v5, v4, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 567
    .line 568
    if-eqz v5, :cond_246

    .line 569
    .line 570
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    const-string v5, "mView="

    .line 574
    .line 575
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    iget-object v5, v4, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 579
    .line 580
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 581
    .line 582
    .line 583
    :cond_246
    invoke-virtual {v4}, Landroidx/fragment/app/c0;->e()Landroid/content/Context;

    .line 584
    .line 585
    .line 586
    move-result-object v5

    .line 587
    if-eqz v5, :cond_253

    .line 588
    .line 589
    invoke-static {v4}, Lx0/a;->a(Landroidx/lifecycle/t;)Lx0/c;

    .line 590
    .line 591
    .line 592
    move-result-object v5

    .line 593
    invoke-virtual {v5, v3, p3}, Lx0/c;->b(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 594
    .line 595
    .line 596
    :cond_253
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    new-instance v5, Ljava/lang/StringBuilder;

    .line 600
    .line 601
    const-string v6, "Child "

    .line 602
    .line 603
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object v6, v4, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 607
    .line 608
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const-string v6, ":"

    .line 612
    .line 613
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    .line 622
    .line 623
    iget-object v4, v4, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 624
    .line 625
    const-string v5, "  "

    .line 626
    .line 627
    invoke-static {v3, v5}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    invoke-virtual {v4, v5, p2, p3, p4}, Landroidx/fragment/app/y0;->v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    goto/16 :goto_2c

    .line 635
    .line 636
    :cond_27b
    const-string v4, "null"

    .line 637
    .line 638
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_2c

    .line 642
    .line 643
    :cond_282
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 644
    .line 645
    .line 646
    move-result p2

    .line 647
    const/4 p4, 0x0

    .line 648
    if-lez p2, :cond_2b4

    .line 649
    .line 650
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    const-string v1, "Added Fragments:"

    .line 654
    .line 655
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    move v1, p4

    .line 659
    :goto_292
    if-ge v1, p2, :cond_2b4

    .line 660
    .line 661
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v3

    .line 665
    check-cast v3, Landroidx/fragment/app/c0;

    .line 666
    .line 667
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    const-string v4, "  #"

    .line 671
    .line 672
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 676
    .line 677
    .line 678
    const-string v4, ": "

    .line 679
    .line 680
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v3}, Landroidx/fragment/app/c0;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    add-int/lit8 v1, v1, 0x1

    .line 691
    .line 692
    goto :goto_292

    .line 693
    :cond_2b4
    iget-object p2, p0, Landroidx/fragment/app/y0;->e:Ljava/util/ArrayList;

    .line 694
    .line 695
    if-eqz p2, :cond_2eb

    .line 696
    .line 697
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 698
    .line 699
    .line 700
    move-result p2

    .line 701
    if-lez p2, :cond_2eb

    .line 702
    .line 703
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    const-string v1, "Fragments Created Menus:"

    .line 707
    .line 708
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    move v1, p4

    .line 712
    :goto_2c7
    if-ge v1, p2, :cond_2eb

    .line 713
    .line 714
    iget-object v2, p0, Landroidx/fragment/app/y0;->e:Ljava/util/ArrayList;

    .line 715
    .line 716
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    check-cast v2, Landroidx/fragment/app/c0;

    .line 721
    .line 722
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    const-string v3, "  #"

    .line 726
    .line 727
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 731
    .line 732
    .line 733
    const-string v3, ": "

    .line 734
    .line 735
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2}, Landroidx/fragment/app/c0;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    add-int/lit8 v1, v1, 0x1

    .line 746
    .line 747
    goto :goto_2c7

    .line 748
    :cond_2eb
    iget-object p2, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 751
    .line 752
    .line 753
    move-result p2

    .line 754
    if-lez p2, :cond_324

    .line 755
    .line 756
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    const-string v1, "Back Stack:"

    .line 760
    .line 761
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    move v1, p4

    .line 765
    :goto_2fc
    if-ge v1, p2, :cond_324

    .line 766
    .line 767
    iget-object v2, p0, Landroidx/fragment/app/y0;->d:Ljava/util/ArrayList;

    .line 768
    .line 769
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    check-cast v2, Landroidx/fragment/app/a;

    .line 774
    .line 775
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    const-string v3, "  #"

    .line 779
    .line 780
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 784
    .line 785
    .line 786
    const-string v3, ": "

    .line 787
    .line 788
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v3

    .line 795
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    const/4 v3, 0x1

    .line 799
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->f(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 800
    .line 801
    .line 802
    add-int/lit8 v1, v1, 0x1

    .line 803
    .line 804
    goto :goto_2fc

    .line 805
    :cond_324
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    new-instance p2, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    const-string v0, "Back Stack Index: "

    .line 811
    .line 812
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    iget-object v0, p0, Landroidx/fragment/app/y0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 816
    .line 817
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 818
    .line 819
    .line 820
    move-result v0

    .line 821
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object p2

    .line 828
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    iget-object p2, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 832
    .line 833
    monitor-enter p2

    .line 834
    :try_start_341
    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    if-lez v0, :cond_373

    .line 841
    .line 842
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    .line 844
    .line 845
    const-string v1, "Pending Actions:"

    .line 846
    .line 847
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    :goto_351
    if-ge p4, v0, :cond_373

    .line 851
    .line 852
    iget-object v1, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 853
    .line 854
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    check-cast v1, Landroidx/fragment/app/v0;

    .line 859
    .line 860
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    const-string v2, "  #"

    .line 864
    .line 865
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 869
    .line 870
    .line 871
    const-string v2, ": "

    .line 872
    .line 873
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 877
    .line 878
    .line 879
    add-int/lit8 p4, p4, 0x1

    .line 880
    .line 881
    goto :goto_351

    .line 882
    :catchall_371
    move-exception p1

    .line 883
    goto :goto_3e4

    .line 884
    :cond_373
    monitor-exit p2
    :try_end_374
    .catchall {:try_start_341 .. :try_end_374} :catchall_371

    .line 885
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    const-string p2, "FragmentManager misc state:"

    .line 889
    .line 890
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 894
    .line 895
    .line 896
    const-string p2, "  mHost="

    .line 897
    .line 898
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    iget-object p2, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 902
    .line 903
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    const-string p2, "  mContainer="

    .line 910
    .line 911
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    iget-object p2, p0, Landroidx/fragment/app/y0;->x:Lh8/b;

    .line 915
    .line 916
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    iget-object p2, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 920
    .line 921
    if-eqz p2, :cond_3a7

    .line 922
    .line 923
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    const-string p2, "  mParent="

    .line 927
    .line 928
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    iget-object p2, p0, Landroidx/fragment/app/y0;->y:Landroidx/fragment/app/c0;

    .line 932
    .line 933
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 934
    .line 935
    .line 936
    :cond_3a7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    const-string p2, "  mCurState="

    .line 940
    .line 941
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    iget p2, p0, Landroidx/fragment/app/y0;->v:I

    .line 945
    .line 946
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 947
    .line 948
    .line 949
    const-string p2, " mStateSaved="

    .line 950
    .line 951
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    iget-boolean p2, p0, Landroidx/fragment/app/y0;->H:Z

    .line 955
    .line 956
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 957
    .line 958
    .line 959
    const-string p2, " mStopped="

    .line 960
    .line 961
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 962
    .line 963
    .line 964
    iget-boolean p2, p0, Landroidx/fragment/app/y0;->I:Z

    .line 965
    .line 966
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 967
    .line 968
    .line 969
    const-string p2, " mDestroyed="

    .line 970
    .line 971
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 972
    .line 973
    .line 974
    iget-boolean p2, p0, Landroidx/fragment/app/y0;->J:Z

    .line 975
    .line 976
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 977
    .line 978
    .line 979
    iget-boolean p2, p0, Landroidx/fragment/app/y0;->G:Z

    .line 980
    .line 981
    if-eqz p2, :cond_3e3

    .line 982
    .line 983
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    const-string p1, "  mNeedMenuInvalidate="

    .line 987
    .line 988
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    iget-boolean p1, p0, Landroidx/fragment/app/y0;->G:Z

    .line 992
    .line 993
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 994
    .line 995
    .line 996
    :cond_3e3
    return-void

    .line 997
    :goto_3e4
    :try_start_3e4
    monitor-exit p2
    :try_end_3e5
    .catchall {:try_start_3e4 .. :try_end_3e5} :catchall_371

    .line 998
    throw p1
.end method

.method public final w()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->e()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_18

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/fragment/app/o;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/o;->h()V

    .line 22
    .line 23
    .line 24
    goto :goto_8

    .line 25
    :cond_18
    return-void
.end method

.method public final x(Landroidx/fragment/app/v0;Z)V
    .registers 5

    .line 1
    if-nez p2, :cond_2b

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 4
    .line 5
    if-nez v0, :cond_1a

    .line 6
    .line 7
    iget-boolean p1, p0, Landroidx/fragment/app/y0;->J:Z

    .line 8
    .line 9
    if-eqz p1, :cond_12

    .line 10
    .line 11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string p2, "FragmentManager has been destroyed"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string p2, "FragmentManager has not been attached to a host."

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1a
    iget-boolean v0, p0, Landroidx/fragment/app/y0;->H:Z

    .line 28
    .line 29
    if-nez v0, :cond_23

    .line 30
    .line 31
    iget-boolean v0, p0, Landroidx/fragment/app/y0;->I:Z

    .line 32
    .line 33
    if-nez v0, :cond_23

    .line 34
    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "Can not perform this action after onSaveInstanceState"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_2e
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 48
    .line 49
    if-nez v1, :cond_40

    .line 50
    .line 51
    if-eqz p2, :cond_38

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    goto :goto_4a

    .line 57
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "Activity has been destroyed"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_40
    iget-object p2, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->W()V

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_36

    .line 76
    throw p1
.end method

.method public final y(Z)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/y0;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_58

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 6
    .line 7
    if-nez v0, :cond_1c

    .line 8
    .line 9
    iget-boolean p1, p0, Landroidx/fragment/app/y0;->J:Z

    .line 10
    .line 11
    if-eqz p1, :cond_14

    .line 12
    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "FragmentManager has been destroyed"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "FragmentManager has not been attached to a host."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 34
    .line 35
    iget-object v1, v1, Landroidx/fragment/app/g0;->c:Landroid/os/Handler;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-ne v0, v1, :cond_50

    .line 42
    .line 43
    if-nez p1, :cond_3d

    .line 44
    .line 45
    iget-boolean p1, p0, Landroidx/fragment/app/y0;->H:Z

    .line 46
    .line 47
    if-nez p1, :cond_35

    .line 48
    .line 49
    iget-boolean p1, p0, Landroidx/fragment/app/y0;->I:Z

    .line 50
    .line 51
    if-nez p1, :cond_35

    .line 52
    .line 53
    goto :goto_3d

    .line 54
    :cond_35
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "Can not perform this action after onSaveInstanceState"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3d
    :goto_3d
    iget-object p1, p0, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez p1, :cond_4f

    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    .line 72
    .line 73
    new-instance p1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    .line 79
    .line 80
    :cond_4f
    return-void

    .line 81
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    const-string v0, "Must be called from main thread of fragment host"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_58
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 90
    .line 91
    const-string v0, "FragmentManager is already executing transactions"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final z(Z)Z
    .registers 11

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/y0;->y(Z)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/fragment/app/y0;->i:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_5d

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 11
    .line 12
    if-eqz p1, :cond_5d

    .line 13
    .line 14
    iput-boolean v1, p1, Landroidx/fragment/app/a;->r:Z

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_35

    .line 22
    .line 23
    const-string p1, "FragmentManager"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "Reversing mTransitioningOp "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " as part of execPendingActions for actions "

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_35
    iget-object p1, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 55
    .line 56
    invoke-virtual {p1, v1, v1}, Landroidx/fragment/app/a;->d(ZZ)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 62
    .line 63
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 67
    .line 68
    iget-object p1, p1, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    move v3, v1

    .line 75
    :cond_4a
    :goto_4a
    if-ge v3, v2, :cond_5b

    .line 76
    .line 77
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    check-cast v4, Landroidx/fragment/app/h1;

    .line 84
    .line 85
    iget-object v4, v4, Landroidx/fragment/app/h1;->b:Landroidx/fragment/app/c0;

    .line 86
    .line 87
    if-eqz v4, :cond_4a

    .line 88
    .line 89
    iput-boolean v1, v4, Landroidx/fragment/app/c0;->m:Z

    .line 90
    .line 91
    goto :goto_4a

    .line 92
    :cond_5b
    iput-object v0, p0, Landroidx/fragment/app/y0;->h:Landroidx/fragment/app/a;

    .line 93
    .line 94
    :cond_5d
    move p1, v1

    .line 95
    :goto_5e
    iget-object v2, p0, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    .line 96
    .line 97
    iget-object v3, p0, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object v4, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 100
    .line 101
    monitor-enter v4

    .line 102
    :try_start_65
    iget-object v5, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_72

    .line 109
    .line 110
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_70

    .line 111
    move v7, v1

    .line 112
    goto :goto_9d

    .line 113
    :catchall_70
    move-exception p1

    .line 114
    goto :goto_df

    .line 115
    :cond_72
    :try_start_72
    iget-object v5, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    move v6, v1

    .line 122
    move v7, v6

    .line 123
    :goto_7a
    if-ge v6, v5, :cond_8e

    .line 124
    .line 125
    iget-object v8, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    check-cast v8, Landroidx/fragment/app/v0;

    .line 132
    .line 133
    invoke-interface {v8, v2, v3}, Landroidx/fragment/app/v0;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    .line 134
    .line 135
    .line 136
    move-result v8
    :try_end_88
    .catchall {:try_start_72 .. :try_end_88} :catchall_8c

    .line 137
    or-int/2addr v7, v8

    .line 138
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    goto :goto_7a

    .line 141
    :catchall_8c
    move-exception p1

    .line 142
    goto :goto_d0

    .line 143
    :cond_8e
    :try_start_8e
    iget-object v2, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 149
    .line 150
    iget-object v2, v2, Landroidx/fragment/app/g0;->c:Landroid/os/Handler;

    .line 151
    .line 152
    iget-object v3, p0, Landroidx/fragment/app/y0;->P:Landroidx/fragment/app/p;

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    .line 156
    .line 157
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_8e .. :try_end_9d} :catchall_70

    .line 158
    :goto_9d
    if-eqz v7, :cond_b2

    .line 159
    .line 160
    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Landroidx/fragment/app/y0;->b:Z

    .line 162
    .line 163
    :try_start_a2
    iget-object v2, p0, Landroidx/fragment/app/y0;->L:Ljava/util/ArrayList;

    .line 164
    .line 165
    iget-object v3, p0, Landroidx/fragment/app/y0;->M:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/y0;->T(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_ad

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->d()V

    .line 171
    .line 172
    .line 173
    goto :goto_5e

    .line 174
    :catchall_ad
    move-exception p1

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->d()V

    .line 176
    .line 177
    .line 178
    throw p1

    .line 179
    :cond_b2
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->e0()V

    .line 180
    .line 181
    .line 182
    iget-boolean v2, p0, Landroidx/fragment/app/y0;->K:Z

    .line 183
    .line 184
    if-eqz v2, :cond_be

    .line 185
    .line 186
    iput-boolean v1, p0, Landroidx/fragment/app/y0;->K:Z

    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/y0;->c0()V

    .line 189
    .line 190
    .line 191
    :cond_be
    iget-object v1, p0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 192
    .line 193
    iget-object v1, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Ljava/util/HashMap;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {v1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 206
    .line 207
    .line 208
    return p1

    .line 209
    :goto_d0
    :try_start_d0
    iget-object v0, p0, Landroidx/fragment/app/y0;->a:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Landroidx/fragment/app/y0;->w:Landroidx/fragment/app/g0;

    .line 215
    .line 216
    iget-object v0, v0, Landroidx/fragment/app/g0;->c:Landroid/os/Handler;

    .line 217
    .line 218
    iget-object v1, p0, Landroidx/fragment/app/y0;->P:Landroidx/fragment/app/p;

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :goto_df
    monitor-exit v4
    :try_end_e0
    .catchall {:try_start_d0 .. :try_end_e0} :catchall_70

    .line 225
    throw p1
.end method

###### Class androidx.fragment.app.n0 (androidx.fragment.app.n0)
.class public final synthetic Landroidx/fragment/app/n0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Li0/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/y0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/y0;I)V
    .registers 3

    .line 1
    iput p2, p0, Landroidx/fragment/app/n0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/y0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/n0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_4e

    .line 4
    .line 5
    .line 6
    check-cast p1, Ly/v;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/y0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->L()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_15

    .line 15
    .line 16
    iget-boolean p1, p1, Ly/v;->a:Z

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y0;->s(Z)V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void

    .line 23
    :pswitch_16
    check-cast p1, Ly/i;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/y0;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->L()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_26

    .line 32
    .line 33
    iget-boolean p1, p1, Ly/i;->a:Z

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y0;->n(Z)V

    .line 37
    .line 38
    .line 39
    :cond_26
    return-void

    .line 40
    :pswitch_27
    check-cast p1, Ljava/lang/Integer;

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/y0;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->L()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3d

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/16 v1, 0x50

    .line 55
    .line 56
    if-ne p1, v1, :cond_3d

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    invoke-virtual {v0, p1}, Landroidx/fragment/app/y0;->m(Z)V

    .line 60
    .line 61
    .line 62
    :cond_3d
    return-void

    .line 63
    :pswitch_3e
    check-cast p1, Landroid/content/res/Configuration;

    .line 64
    .line 65
    iget-object v0, p0, Landroidx/fragment/app/n0;->b:Landroidx/fragment/app/y0;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->L()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4c

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/y0;->i(ZLandroid/content/res/Configuration;)V

    .line 75
    .line 76
    .line 77
    :cond_4c
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_27
        :pswitch_16
    .end packed-switch
.end method
