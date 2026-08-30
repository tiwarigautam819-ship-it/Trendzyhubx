###### Class x3.j (x3.j)
.class public final Lx3/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lw3/c;
.implements Lw3/d;


# instance fields
.field public final b:Ljava/util/LinkedList;

.field public final c:Lw3/a;

.field public final d:Lx3/a;

.field public final e:Lu3/o;

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/HashMap;

.field public final h:I

.field public final i:Lx3/r;

.field public j:Z

.field public final k:Ljava/util/ArrayList;

.field public l:Lcom/google/android/gms/common/ConnectionResult;

.field public final synthetic m:Lx3/d;


# direct methods
.method public constructor <init>(Lx3/d;Lz3/b;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx3/j;->m:Lx3/d;

    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lx3/j;->b:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lx3/j;->f:Ljava/util/HashSet;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lx3/j;->g:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lx3/j;->k:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lx3/j;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 36
    .line 37
    iget-object v1, p1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p2}, Lz3/b;->a()Lc5/h;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v5, Lcom/google/android/gms/common/internal/g;

    .line 48
    .line 49
    iget-object v3, v2, Lc5/h;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Ls/f;

    .line 52
    .line 53
    iget-object v6, v2, Lc5/h;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v6, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v2, v2, Lc5/h;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-direct {v5, v3, v6, v2}, Lcom/google/android/gms/common/internal/g;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p2, Lz3/b;->c:Lu3/o;

    .line 65
    .line 66
    iget-object v2, v2, Lu3/o;->a:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v2, Lm4/b;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v6, p2, Lz3/b;->d:Lcom/google/android/gms/common/internal/s;

    .line 74
    .line 75
    iget-object v3, p2, Lz3/b;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v2, Lz3/c;

    .line 81
    .line 82
    move-object v8, p0

    .line 83
    move-object v7, p0

    .line 84
    invoke-direct/range {v2 .. v8}, Lz3/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/internal/s;Lx3/j;Lx3/j;)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p2, Lz3/b;->b:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v3, :cond_60

    .line 90
    .line 91
    move-object v4, v2

    .line 92
    check-cast v4, Lcom/google/android/gms/common/internal/f;

    .line 93
    .line 94
    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/internal/f;->setAttributionTag(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_60
    iput-object v2, v7, Lx3/j;->c:Lw3/a;

    .line 98
    .line 99
    iget-object v3, p2, Lz3/b;->e:Lx3/a;

    .line 100
    .line 101
    iput-object v3, v7, Lx3/j;->d:Lx3/a;

    .line 102
    .line 103
    new-instance v3, Lu3/o;

    .line 104
    .line 105
    invoke-direct {v3}, Lu3/o;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v3, v7, Lx3/j;->e:Lu3/o;

    .line 109
    .line 110
    iget v3, p2, Lz3/b;->f:I

    .line 111
    .line 112
    iput v3, v7, Lx3/j;->h:I

    .line 113
    .line 114
    invoke-interface {v2}, Lw3/a;->requiresSignIn()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_96

    .line 119
    .line 120
    iget-object p1, p1, Lx3/d;->e:Landroid/content/Context;

    .line 121
    .line 122
    new-instance v0, Lx3/r;

    .line 123
    .line 124
    invoke-virtual {p2}, Lz3/b;->a()Lc5/h;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    new-instance v2, Lcom/google/android/gms/common/internal/g;

    .line 129
    .line 130
    iget-object v3, p2, Lc5/h;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v3, Ls/f;

    .line 133
    .line 134
    iget-object v4, p2, Lc5/h;->c:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v4, Ljava/lang/String;

    .line 137
    .line 138
    iget-object p2, p2, Lc5/h;->d:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p2, Ljava/lang/String;

    .line 141
    .line 142
    invoke-direct {v2, v3, v4, p2}, Lcom/google/android/gms/common/internal/g;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-direct {v0, p1, v1, v2}, Lx3/r;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/r0;Lcom/google/android/gms/common/internal/g;)V

    .line 146
    .line 147
    .line 148
    iput-object v0, v7, Lx3/j;->i:Lx3/r;

    .line 149
    .line 150
    return-void

    .line 151
    :cond_96
    iput-object v0, v7, Lx3/j;->i:Lx3/r;

    .line 152
    .line 153
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lx3/j;->f:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_27

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_21

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/d0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1f

    .line 26
    .line 27
    iget-object p1, p0, Lx3/j;->c:Lw3/a;

    .line 28
    .line 29
    invoke-interface {p1}, Lw3/a;->getEndpointPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    throw p1

    .line 34
    :cond_21
    new-instance p1, Ljava/lang/ClassCastException;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_27
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final b()V
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lx3/j;->m:Lx3/d;

    .line 6
    .line 7
    iget-object v1, v1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v0, v2, :cond_12

    .line 14
    .line 15
    invoke-virtual {p0}, Lx3/j;->f()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Landroidx/fragment/app/p;

    .line 20
    .line 21
    const/16 v2, 0xe

    .line 22
    .line 23
    invoke-direct {v0, v2, p0}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lx3/j;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_d

    .line 11
    .line 12
    move v2, v1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v2, v0

    .line 15
    :goto_e
    if-eqz p2, :cond_11

    .line 16
    .line 17
    move v0, v1

    .line 18
    :cond_11
    if-eq v2, v0, :cond_3a

    .line 19
    .line 20
    iget-object v0, p0, Lx3/j;->b:Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_39

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lx3/o;

    .line 37
    .line 38
    if-eqz p3, :cond_2c

    .line 39
    .line 40
    iget v2, v1, Lx3/o;->a:I

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    if-ne v2, v3, :cond_19

    .line 44
    .line 45
    :cond_2c
    if-eqz p1, :cond_32

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lx3/o;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 48
    .line 49
    .line 50
    goto :goto_35

    .line 51
    :cond_32
    invoke-virtual {v1, p2}, Lx3/o;->d(Ljava/lang/Exception;)V

    .line 52
    .line 53
    .line 54
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    goto :goto_19

    .line 58
    :cond_39
    return-void

    .line 59
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "Status XOR exception should be null"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final e()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lx3/j;->b:Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_c
    if-ge v3, v2, :cond_29

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lx3/o;

    .line 20
    .line 21
    iget-object v5, p0, Lx3/j;->c:Lw3/a;

    .line 22
    .line 23
    invoke-interface {v5}, Lw3/a;->isConnected()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1d

    .line 28
    .line 29
    goto :goto_29

    .line 30
    :cond_1d
    invoke-virtual {p0, v4}, Lx3/j;->i(Lx3/o;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_26

    .line 35
    .line 36
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_c

    .line 42
    :cond_29
    :goto_29
    return-void
.end method

.method public final f()V
    .registers 4

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lx3/j;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lx3/j;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 17
    .line 18
    iget-boolean v1, p0, Lx3/j;->j:Z

    .line 19
    .line 20
    if-eqz v1, :cond_24

    .line 21
    .line 22
    const/16 v1, 0xb

    .line 23
    .line 24
    iget-object v2, p0, Lx3/j;->d:Lx3/a;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/16 v1, 0x9

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lx3/j;->j:Z

    .line 36
    .line 37
    :cond_24
    iget-object v0, p0, Lx3/j;->g:Ljava/util/HashMap;

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
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3b

    .line 52
    .line 53
    invoke-virtual {p0}, Lx3/j;->e()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lx3/j;->h()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/lang/ClassCastException;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final g(I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    iget-object v2, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lx3/j;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iput-boolean v3, p0, Lx3/j;->j:Z

    .line 15
    .line 16
    iget-object v4, p0, Lx3/j;->c:Lw3/a;

    .line 17
    .line 18
    invoke-interface {v4}, Lw3/a;->getLastDisconnectMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, p0, Lx3/j;->e:Lu3/o;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v7, "The connection to Google Play services was lost"

    .line 30
    .line 31
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    if-ne p1, v3, :cond_29

    .line 35
    .line 36
    const-string p1, " due to service disconnection."

    .line 37
    .line 38
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    goto :goto_31

    .line 42
    :cond_29
    const/4 v7, 0x3

    .line 43
    if-ne p1, v7, :cond_31

    .line 44
    .line 45
    const-string p1, " due to dead object exception."

    .line 46
    .line 47
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_31
    :goto_31
    if-eqz v4, :cond_3b

    .line 51
    .line 52
    const-string p1, " Last reason for disconnect: "

    .line 53
    .line 54
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_3b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    .line 65
    .line 66
    const/16 v6, 0x14

    .line 67
    .line 68
    invoke-direct {v4, v6, p1, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lcom/google/android/gms/common/ConnectionResult;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v3, v4}, Lu3/o;->c(ZLcom/google/android/gms/common/api/Status;)V

    .line 72
    .line 73
    .line 74
    const/16 p1, 0x9

    .line 75
    .line 76
    iget-object v2, p0, Lx3/j;->d:Lx3/a;

    .line 77
    .line 78
    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-wide/16 v3, 0x1388

    .line 83
    .line 84
    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 85
    .line 86
    .line 87
    const/16 p1, 0xb

    .line 88
    .line 89
    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-wide/32 v2, 0x1d4c0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    .line 98
    .line 99
    iget-object p1, v0, Lx3/d;->g:Lcom/google/android/gms/internal/measurement/y4;

    .line 100
    .line 101
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Landroid/util/SparseIntArray;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lx3/j;->g:Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_7c

    .line 123
    .line 124
    return-void

    .line 125
    :cond_7c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    new-instance p1, Ljava/lang/ClassCastException;

    .line 133
    .line 134
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 135
    .line 136
    .line 137
    throw p1
.end method

.method public final h()V
    .registers 6

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    iget-object v3, p0, Lx3/j;->d:Lx3/a;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-wide v3, v0, Lx3/d;->a:J

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final i(Lx3/o;)Z
    .registers 15

    .line 1
    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_11d

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lx3/o;->b(Lx3/j;)[Lv3/c;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v2, :cond_57

    .line 13
    .line 14
    array-length v5, v2

    .line 15
    if-nez v5, :cond_11

    .line 16
    .line 17
    goto :goto_57

    .line 18
    :cond_11
    iget-object v5, p0, Lx3/j;->c:Lw3/a;

    .line 19
    .line 20
    invoke-interface {v5}, Lw3/a;->getAvailableFeatures()[Lv3/c;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_1b

    .line 25
    .line 26
    new-array v5, v3, [Lv3/c;

    .line 27
    .line 28
    :cond_1b
    new-instance v6, Ls/e;

    .line 29
    .line 30
    array-length v7, v5

    .line 31
    invoke-direct {v6, v7}, Ls/j;-><init>(I)V

    .line 32
    .line 33
    .line 34
    move v7, v3

    .line 35
    :goto_22
    array-length v8, v5

    .line 36
    if-ge v7, v8, :cond_37

    .line 37
    .line 38
    aget-object v8, v5, v7

    .line 39
    .line 40
    iget-object v9, v8, Lv3/c;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v8}, Lv3/c;->a()J

    .line 43
    .line 44
    .line 45
    move-result-wide v10

    .line 46
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual {v6, v9, v8}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    goto :goto_22

    .line 56
    :cond_37
    array-length v5, v2

    .line 57
    move v7, v3

    .line 58
    :goto_39
    if-ge v7, v5, :cond_57

    .line 59
    .line 60
    aget-object v8, v2, v7

    .line 61
    .line 62
    iget-object v9, v8, Lv3/c;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v6, v9}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    check-cast v9, Ljava/lang/Long;

    .line 69
    .line 70
    if-eqz v9, :cond_58

    .line 71
    .line 72
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    invoke-virtual {v8}, Lv3/c;->a()J

    .line 77
    .line 78
    .line 79
    move-result-wide v11

    .line 80
    cmp-long v9, v9, v11

    .line 81
    .line 82
    if-gez v9, :cond_54

    .line 83
    .line 84
    goto :goto_58

    .line 85
    :cond_54
    add-int/lit8 v7, v7, 0x1

    .line 86
    .line 87
    goto :goto_39

    .line 88
    :cond_57
    :goto_57
    move-object v8, v4

    .line 89
    :cond_58
    :goto_58
    if-nez v8, :cond_70

    .line 90
    .line 91
    iget-object v2, p0, Lx3/j;->e:Lu3/o;

    .line 92
    .line 93
    iget-object v3, p0, Lx3/j;->c:Lw3/a;

    .line 94
    .line 95
    invoke-interface {v3}, Lw3/a;->requiresSignIn()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {p1, v2, v4}, Lx3/o;->f(Lu3/o;Z)V

    .line 100
    .line 101
    .line 102
    :try_start_65
    invoke-virtual {p1, p0}, Lx3/o;->e(Lx3/j;)V
    :try_end_68
    .catch Landroid/os/DeadObjectException; {:try_start_65 .. :try_end_68} :catch_69

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :catch_69
    invoke-virtual {p0, v1}, Lx3/j;->onConnectionSuspended(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3, v0}, Lw3/a;->disconnect(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v1

    .line 113
    :cond_70
    iget-object v0, p0, Lx3/j;->c:Lw3/a;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v2, v8, Lv3/c;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v8}, Lv3/c;->a()J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, " could not execute call because it requires feature ("

    .line 138
    .line 139
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, ", "

    .line 146
    .line 147
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, ")."

    .line 154
    .line 155
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v2, "GoogleApiManager"

    .line 163
    .line 164
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 168
    .line 169
    iget-boolean v0, v0, Lx3/d;->n:Z

    .line 170
    .line 171
    if-eqz v0, :cond_114

    .line 172
    .line 173
    invoke-virtual {p1, p0}, Lx3/o;->a(Lx3/j;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_114

    .line 178
    .line 179
    iget-object p1, p0, Lx3/j;->d:Lx3/a;

    .line 180
    .line 181
    new-instance v0, Lx3/k;

    .line 182
    .line 183
    invoke-direct {v0, p1, v8}, Lx3/k;-><init>(Lx3/a;Lv3/c;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lx3/j;->k:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    const-wide/16 v1, 0x1388

    .line 193
    .line 194
    const/16 v5, 0xf

    .line 195
    .line 196
    if-ltz p1, :cond_e0

    .line 197
    .line 198
    iget-object v0, p0, Lx3/j;->k:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lx3/k;

    .line 205
    .line 206
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 207
    .line 208
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 209
    .line 210
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 214
    .line 215
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 216
    .line 217
    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    .line 223
    .line 224
    goto :goto_113

    .line 225
    :cond_e0
    iget-object p1, p0, Lx3/j;->k:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    iget-object p1, p0, Lx3/j;->m:Lx3/d;

    .line 231
    .line 232
    iget-object p1, p1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 233
    .line 234
    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lx3/j;->m:Lx3/d;

    .line 242
    .line 243
    iget-object p1, p1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 244
    .line 245
    const/16 v1, 0x10

    .line 246
    .line 247
    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    const-wide/32 v1, 0x1d4c0

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    .line 256
    .line 257
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 258
    .line 259
    const/4 v0, 0x2

    .line 260
    invoke-direct {p1, v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, p1}, Lx3/j;->j(Lcom/google/android/gms/common/ConnectionResult;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-nez v0, :cond_113

    .line 268
    .line 269
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 270
    .line 271
    iget v1, p0, Lx3/j;->h:I

    .line 272
    .line 273
    invoke-virtual {v0, p1, v1}, Lx3/d;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    .line 274
    .line 275
    .line 276
    :cond_113
    :goto_113
    return v3

    .line 277
    :cond_114
    new-instance v0, Lw3/g;

    .line 278
    .line 279
    invoke-direct {v0, v8}, Lw3/g;-><init>(Lv3/c;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v0}, Lx3/o;->d(Ljava/lang/Exception;)V

    .line 283
    .line 284
    .line 285
    return v1

    .line 286
    :cond_11d
    iget-object v2, p0, Lx3/j;->e:Lu3/o;

    .line 287
    .line 288
    iget-object v3, p0, Lx3/j;->c:Lw3/a;

    .line 289
    .line 290
    invoke-interface {v3}, Lw3/a;->requiresSignIn()Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    invoke-virtual {p1, v2, v4}, Lx3/o;->f(Lu3/o;Z)V

    .line 295
    .line 296
    .line 297
    :try_start_128
    invoke-virtual {p1, p0}, Lx3/o;->e(Lx3/j;)V
    :try_end_12b
    .catch Landroid/os/DeadObjectException; {:try_start_128 .. :try_end_12b} :catch_12c

    .line 298
    .line 299
    .line 300
    return v1

    .line 301
    :catch_12c
    invoke-virtual {p0, v1}, Lx3/j;->onConnectionSuspended(I)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v3, v0}, Lw3/a;->disconnect(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    return v1
.end method

.method public final j(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 3

    .line 1
    sget-object p1, Lx3/d;->q:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_3
    monitor-exit p1

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :catchall_6
    move-exception v0

    .line 8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6

    .line 9
    throw v0
.end method

.method public final k()V
    .registers 15

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx3/j;->c:Lw3/a;

    .line 9
    .line 10
    invoke-interface {v1}, Lw3/a;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_15b

    .line 15
    .line 16
    invoke-interface {v1}, Lw3/a;->isConnecting()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_17

    .line 21
    .line 22
    goto/16 :goto_15b

    .line 23
    .line 24
    :cond_17
    const/16 v2, 0xa

    .line 25
    .line 26
    :try_start_19
    iget-object v3, v0, Lx3/d;->g:Lcom/google/android/gms/internal/measurement/y4;

    .line 27
    .line 28
    iget-object v4, v0, Lx3/d;->e:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v5, Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Lw3/a;->requiresGooglePlayServices()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/4 v7, 0x0

    .line 42
    if-nez v6, :cond_2c

    .line 43
    .line 44
    goto :goto_63

    .line 45
    :cond_2c
    invoke-interface {v1}, Lw3/a;->getMinApkVersion()I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v8, v3, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v8, Landroid/util/SparseIntArray;

    .line 52
    .line 53
    const/4 v9, -0x1

    .line 54
    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eq v8, v9, :cond_3d

    .line 59
    .line 60
    move v7, v8

    .line 61
    goto :goto_63

    .line 62
    :cond_3d
    move v8, v7

    .line 63
    :goto_3e
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-ge v8, v10, :cond_54

    .line 68
    .line 69
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 70
    .line 71
    .line 72
    move-result v10

    .line 73
    if-le v10, v6, :cond_51

    .line 74
    .line 75
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-nez v10, :cond_51

    .line 80
    .line 81
    goto :goto_55

    .line 82
    :cond_51
    add-int/lit8 v8, v8, 0x1

    .line 83
    .line 84
    goto :goto_3e

    .line 85
    :cond_54
    move v7, v9

    .line 86
    :goto_55
    if-ne v7, v9, :cond_60

    .line 87
    .line 88
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v3, Lv3/d;

    .line 91
    .line 92
    invoke-virtual {v3, v4, v6}, Lv3/e;->b(Landroid/content/Context;I)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    move v7, v3

    .line 97
    :cond_60
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    .line 99
    .line 100
    :goto_63
    if-eqz v7, :cond_9c

    .line 101
    .line 102
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-direct {v0, v7, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 106
    .line 107
    .line 108
    const-string v4, "GoogleApiManager"

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v7, "The service for "

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, " is not available: "

    .line 136
    .line 137
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0, v3}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    :try_end_98
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_98} :catch_99

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :catch_99
    move-exception v0

    .line 155
    goto/16 :goto_153

    .line 156
    .line 157
    :cond_9c
    new-instance v3, Lx3/l;

    .line 158
    .line 159
    iget-object v4, p0, Lx3/j;->d:Lx3/a;

    .line 160
    .line 161
    invoke-direct {v3, v0, v1, v4}, Lx3/l;-><init>(Lx3/d;Lw3/a;Lx3/a;)V

    .line 162
    .line 163
    .line 164
    invoke-interface {v1}, Lw3/a;->requiresSignIn()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_145

    .line 169
    .line 170
    iget-object v9, p0, Lx3/j;->i:Lx3/r;

    .line 171
    .line 172
    invoke-static {v9}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, v9, Lx3/r;->d:Landroid/os/Handler;

    .line 176
    .line 177
    iget-object v7, v9, Lx3/r;->g:Lcom/google/android/gms/common/internal/g;

    .line 178
    .line 179
    iget-object v4, v9, Lx3/r;->h:Ln4/a;

    .line 180
    .line 181
    if-eqz v4, :cond_b9

    .line 182
    .line 183
    invoke-interface {v4}, Lw3/a;->disconnect()V

    .line 184
    .line 185
    .line 186
    :cond_b9
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    iput-object v4, v7, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 195
    .line 196
    iget-object v4, v9, Lx3/r;->e:Lm4/b;

    .line 197
    .line 198
    iget-object v5, v9, Lx3/r;->c:Landroid/content/Context;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    iget-object v8, v7, Lcom/google/android/gms/common/internal/g;->f:Ljava/lang/Object;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    new-instance v4, Ln4/a;

    .line 210
    .line 211
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    iget-object v8, v7, Lcom/google/android/gms/common/internal/g;->g:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v8, Ljava/lang/Integer;

    .line 217
    .line 218
    move-object v10, v8

    .line 219
    new-instance v8, Landroid/os/Bundle;

    .line 220
    .line 221
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v11, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 225
    .line 226
    const/4 v12, 0x0

    .line 227
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 228
    .line 229
    .line 230
    if-eqz v10, :cond_f0

    .line 231
    .line 232
    const-string v11, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    .line 233
    .line 234
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    invoke-virtual {v8, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    :cond_f0
    const-string v10, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 242
    .line 243
    const/4 v11, 0x0

    .line 244
    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    .line 246
    .line 247
    const-string v10, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 248
    .line 249
    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    const-string v10, "com.google.android.gms.signin.internal.serverClientId"

    .line 253
    .line 254
    invoke-virtual {v8, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string v10, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 258
    .line 259
    const/4 v13, 0x1

    .line 260
    invoke-virtual {v8, v10, v13}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    .line 262
    .line 263
    const-string v10, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 264
    .line 265
    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    .line 267
    .line 268
    const-string v10, "com.google.android.gms.signin.internal.hostedDomain"

    .line 269
    .line 270
    invoke-virtual {v8, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const-string v10, "com.google.android.gms.signin.internal.logSessionId"

    .line 274
    .line 275
    invoke-virtual {v8, v10, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    const-string v10, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 279
    .line 280
    invoke-virtual {v8, v10, v11}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    .line 282
    .line 283
    move-object v10, v9

    .line 284
    invoke-direct/range {v4 .. v10}, Ln4/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Landroid/os/Bundle;Lw3/c;Lw3/d;)V

    .line 285
    .line 286
    .line 287
    iput-object v4, v9, Lx3/r;->h:Ln4/a;

    .line 288
    .line 289
    iput-object v3, v9, Lx3/r;->i:Lx3/l;

    .line 290
    .line 291
    iget-object v4, v9, Lx3/r;->f:Ljava/util/Set;

    .line 292
    .line 293
    if-eqz v4, :cond_13b

    .line 294
    .line 295
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    if-eqz v4, :cond_12d

    .line 300
    .line 301
    goto :goto_13b

    .line 302
    :cond_12d
    iget-object v0, v9, Lx3/r;->h:Ln4/a;

    .line 303
    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    new-instance v4, Lcom/google/android/gms/common/internal/o;

    .line 308
    .line 309
    invoke-direct {v4, v0}, Lcom/google/android/gms/common/internal/o;-><init>(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/internal/f;->connect(Lcom/google/android/gms/common/internal/d;)V

    .line 313
    .line 314
    .line 315
    goto :goto_145

    .line 316
    :cond_13b
    :goto_13b
    new-instance v4, Landroidx/fragment/app/p;

    .line 317
    .line 318
    const/16 v5, 0x10

    .line 319
    .line 320
    invoke-direct {v4, v5, v9}, Landroidx/fragment/app/p;-><init>(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    .line 325
    .line 326
    :cond_145
    :goto_145
    :try_start_145
    invoke-interface {v1, v3}, Lw3/a;->connect(Lcom/google/android/gms/common/internal/d;)V
    :try_end_148
    .catch Ljava/lang/SecurityException; {:try_start_145 .. :try_end_148} :catch_149

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :catch_149
    move-exception v0

    .line 331
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 332
    .line 333
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v1, v0}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :goto_153
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 341
    .line 342
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0, v1, v0}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 346
    .line 347
    .line 348
    :cond_15b
    :goto_15b
    return-void
.end method

.method public final l(Lx3/o;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx3/j;->c:Lw3/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lw3/a;->isConnected()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lx3/j;->b:Ljava/util/LinkedList;

    .line 15
    .line 16
    if-eqz v0, :cond_1f

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lx3/j;->i(Lx3/o;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1b

    .line 23
    .line 24
    invoke-virtual {p0}, Lx3/j;->h()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1f
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lx3/j;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 36
    .line 37
    if-eqz p1, :cond_33

    .line 38
    .line 39
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 40
    .line 41
    if-eqz v0, :cond_33

    .line 42
    .line 43
    iget-object v0, p1, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    .line 44
    .line 45
    if-eqz v0, :cond_33

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_33
    invoke-virtual {p0}, Lx3/j;->k()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx3/j;->i:Lx3/r;

    .line 9
    .line 10
    if-eqz v0, :cond_12

    .line 11
    .line 12
    iget-object v0, v0, Lx3/r;->h:Ln4/a;

    .line 13
    .line 14
    if-eqz v0, :cond_12

    .line 15
    .line 16
    invoke-interface {v0}, Lw3/a;->disconnect()V

    .line 17
    .line 18
    .line 19
    :cond_12
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 20
    .line 21
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lx3/j;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 28
    .line 29
    iget-object v1, p0, Lx3/j;->m:Lx3/d;

    .line 30
    .line 31
    iget-object v1, v1, Lx3/d;->g:Lcom/google/android/gms/internal/measurement/y4;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lx3/j;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lx3/j;->c:Lw3/a;

    .line 44
    .line 45
    instance-of v1, v1, Lz3/c;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_49

    .line 49
    .line 50
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 51
    .line 52
    const/16 v3, 0x18

    .line 53
    .line 54
    if-eq v1, v3, :cond_49

    .line 55
    .line 56
    iget-object v1, p0, Lx3/j;->m:Lx3/d;

    .line 57
    .line 58
    iput-boolean v2, v1, Lx3/d;->b:Z

    .line 59
    .line 60
    iget-object v1, v1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 61
    .line 62
    const/16 v3, 0x13

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-wide/32 v4, 0x493e0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .line 73
    .line 74
    :cond_49
    iget v1, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    if-ne v1, v3, :cond_54

    .line 78
    .line 79
    sget-object p1, Lx3/d;->p:Lcom/google/android/gms/common/api/Status;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lx3/j;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_54
    iget-object v1, p0, Lx3/j;->b:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_5f

    .line 92
    .line 93
    iput-object p1, p0, Lx3/j;->l:Lcom/google/android/gms/common/ConnectionResult;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_5f
    if-eqz p2, :cond_6d

    .line 97
    .line 98
    iget-object p1, p0, Lx3/j;->m:Lx3/d;

    .line 99
    .line 100
    iget-object p1, p1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, v0, p2, p1}, Lx3/j;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_6d
    iget-object p2, p0, Lx3/j;->m:Lx3/d;

    .line 111
    .line 112
    iget-boolean p2, p2, Lx3/d;->n:Z

    .line 113
    .line 114
    if-eqz p2, :cond_bd

    .line 115
    .line 116
    iget-object p2, p0, Lx3/j;->d:Lx3/a;

    .line 117
    .line 118
    invoke-static {p2, p1}, Lx3/d;->b(Lx3/a;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p0, p2, v0, v2}, Lx3/j;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lx3/j;->b:Ljava/util/LinkedList;

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_85

    .line 132
    .line 133
    goto :goto_bc

    .line 134
    :cond_85
    invoke-virtual {p0, p1}, Lx3/j;->j(Lcom/google/android/gms/common/ConnectionResult;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-nez p2, :cond_bc

    .line 139
    .line 140
    iget-object p2, p0, Lx3/j;->m:Lx3/d;

    .line 141
    .line 142
    iget v0, p0, Lx3/j;->h:I

    .line 143
    .line 144
    invoke-virtual {p2, p1, v0}, Lx3/d;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_bc

    .line 149
    .line 150
    iget p2, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 151
    .line 152
    const/16 v0, 0x12

    .line 153
    .line 154
    if-ne p2, v0, :cond_9d

    .line 155
    .line 156
    iput-boolean v2, p0, Lx3/j;->j:Z

    .line 157
    .line 158
    :cond_9d
    iget-boolean p2, p0, Lx3/j;->j:Z

    .line 159
    .line 160
    if-eqz p2, :cond_b3

    .line 161
    .line 162
    iget-object p1, p0, Lx3/j;->m:Lx3/d;

    .line 163
    .line 164
    iget-object p2, p0, Lx3/j;->d:Lx3/a;

    .line 165
    .line 166
    iget-object p1, p1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 167
    .line 168
    const/16 v0, 0x9

    .line 169
    .line 170
    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const-wide/16 v0, 0x1388

    .line 175
    .line 176
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_b3
    iget-object p2, p0, Lx3/j;->d:Lx3/a;

    .line 181
    .line 182
    invoke-static {p2, p1}, Lx3/d;->b(Lx3/a;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lx3/j;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 187
    .line 188
    .line 189
    :cond_bc
    :goto_bc
    return-void

    .line 190
    :cond_bd
    iget-object p2, p0, Lx3/j;->d:Lx3/a;

    .line 191
    .line 192
    invoke-static {p2, p1}, Lx3/d;->b(Lx3/a;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lx3/j;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final n(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx3/j;->c:Lw3/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "onSignInFailed for "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " with "

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lw3/a;->disconnect(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final o()V
    .registers 6

    .line 1
    iget-object v0, p0, Lx3/j;->m:Lx3/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->b(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lx3/d;->o:Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lx3/j;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lx3/j;->e:Lu3/o;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2, v0}, Lu3/o;->c(ZLcom/google/android/gms/common/api/Status;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lx3/j;->g:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-array v1, v2, [Lx3/g;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, [Lx3/g;

    .line 32
    .line 33
    array-length v1, v0

    .line 34
    :goto_21
    if-ge v2, v1, :cond_35

    .line 35
    .line 36
    aget-object v3, v0, v2

    .line 37
    .line 38
    new-instance v3, Lx3/t;

    .line 39
    .line 40
    new-instance v4, Lp4/j;

    .line 41
    .line 42
    invoke-direct {v4}, Lp4/j;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v4}, Lx3/t;-><init>(Lp4/j;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lx3/j;->l(Lx3/o;)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_21

    .line 54
    :cond_35
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 55
    .line 56
    const/4 v1, 0x4

    .line 57
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lx3/j;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lx3/j;->c:Lw3/a;

    .line 64
    .line 65
    invoke-interface {v0}, Lw3/a;->isConnected()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_50

    .line 70
    .line 71
    new-instance v1, Lk1/h;

    .line 72
    .line 73
    const/16 v2, 0x1d

    .line 74
    .line 75
    invoke-direct {v1, v2, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v1}, Lw3/a;->onUserSignOut(Lcom/google/android/gms/common/internal/e;)V

    .line 79
    .line 80
    .line 81
    :cond_50
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lx3/j;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lx3/j;->m:Lx3/d;

    .line 6
    .line 7
    iget-object v1, v1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v0, v2, :cond_12

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lx3/j;->g(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Lp0/i;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1}, Lp0/i;-><init>(Lx3/j;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
