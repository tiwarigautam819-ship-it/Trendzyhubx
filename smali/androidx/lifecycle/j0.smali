###### Class androidx.lifecycle.j0 (androidx.lifecycle.j0)
.class public abstract Landroidx/lifecycle/j0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Le5/e;

.field public static final b:Le5/e;

.field public static final c:Le5/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Le5/e;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/lifecycle/j0;->a:Le5/e;

    .line 8
    .line 9
    new-instance v0, Le5/e;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/lifecycle/j0;->b:Le5/e;

    .line 16
    .line 17
    new-instance v0, Le5/e;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Le5/e;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Landroidx/lifecycle/j0;->c:Le5/e;

    .line 24
    .line 25
    return-void
.end method

.method public static final a(Landroidx/lifecycle/p0;Le1/e;Landroidx/lifecycle/o;)V
    .registers 5

    .line 1
    const-string v0, "registry"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycle"

    .line 7
    .line 8
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/lifecycle/p0;->a:Lw0/a;

    .line 14
    .line 15
    if-eqz p0, :cond_20

    .line 16
    .line 17
    iget-object v1, p0, Lw0/a;->a:Lw0/b;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_13
    iget-object p0, p0, Lw0/a;->b:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/AutoCloseable;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1d

    .line 27
    .line 28
    monitor-exit v1

    .line 29
    goto :goto_21

    .line 30
    :catchall_1d
    move-exception p0

    .line 31
    monitor-exit v1

    .line 32
    throw p0

    .line 33
    :cond_20
    const/4 p0, 0x0

    .line 34
    :goto_21
    check-cast p0, Landroidx/lifecycle/i0;

    .line 35
    .line 36
    if-eqz p0, :cond_4b

    .line 37
    .line 38
    iget-boolean v0, p0, Landroidx/lifecycle/i0;->c:Z

    .line 39
    .line 40
    if-nez v0, :cond_4b

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/i0;->c(Le1/e;Landroidx/lifecycle/o;)V

    .line 43
    .line 44
    .line 45
    move-object p0, p2

    .line 46
    check-cast p0, Landroidx/lifecycle/v;

    .line 47
    .line 48
    iget-object p0, p0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 49
    .line 50
    sget-object v0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 51
    .line 52
    if-eq p0, v0, :cond_48

    .line 53
    .line 54
    sget-object v0, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-ltz p0, :cond_3e

    .line 61
    .line 62
    goto :goto_48

    .line 63
    :cond_3e
    new-instance p0, Landroidx/lifecycle/f;

    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p2, v0, p1}, Landroidx/lifecycle/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, p0}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_48
    :goto_48
    invoke-virtual {p1}, Le1/e;->d()V

    .line 74
    .line 75
    .line 76
    :cond_4b
    return-void
.end method

.method public static b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/h0;
    .registers 7

    .line 1
    if-nez p0, :cond_36

    .line 2
    .line 3
    if-nez p1, :cond_a

    .line 4
    .line 5
    new-instance p0, Landroidx/lifecycle/h0;

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/lifecycle/h0;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_a
    new-instance p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_30

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "key"

    .line 37
    .line 38
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_17

    .line 49
    :cond_30
    new-instance p1, Landroidx/lifecycle/h0;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Landroidx/lifecycle/h0;-><init>(Ljava/util/HashMap;)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :cond_36
    const-class p1, Landroidx/lifecycle/h0;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 65
    .line 66
    .line 67
    const-string p1, "keys"

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v0, "values"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-eqz p1, :cond_83

    .line 80
    .line 81
    if-eqz p0, :cond_83

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-ne v0, v1, :cond_83

    .line 92
    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const/4 v2, 0x0

    .line 103
    :goto_66
    if-ge v2, v1, :cond_7d

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 110
    .line 111
    invoke-static {v4, v3}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    check-cast v3, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_66

    .line 126
    :cond_7d
    new-instance p0, Landroidx/lifecycle/h0;

    .line 127
    .line 128
    invoke-direct {p0, v0}, Landroidx/lifecycle/h0;-><init>(Ljava/util/HashMap;)V

    .line 129
    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_83
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    const-string p1, "Invalid bundle passed as restored state"

    .line 135
    .line 136
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0
.end method

.method public static final c(Lv0/c;)Landroidx/lifecycle/h0;
    .registers 8

    .line 1
    iget-object p0, p0, Lv0/b;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    sget-object v0, Landroidx/lifecycle/j0;->a:Le5/e;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Le1/g;

    .line 10
    .line 11
    if-eqz v0, :cond_8d

    .line 12
    .line 13
    sget-object v1, Landroidx/lifecycle/j0;->b:Le5/e;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/lifecycle/t0;

    .line 20
    .line 21
    if-eqz v1, :cond_85

    .line 22
    .line 23
    sget-object v2, Landroidx/lifecycle/j0;->c:Le5/e;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/os/Bundle;

    .line 30
    .line 31
    sget-object v3, Lw0/b;->a:Lw0/b;

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz p0, :cond_7d

    .line 40
    .line 41
    invoke-interface {v0}, Le1/g;->getSavedStateRegistry()Le1/e;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Le1/e;->b()Le1/d;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    instance-of v3, v0, Landroidx/lifecycle/l0;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    if-eqz v3, :cond_38

    .line 53
    .line 54
    check-cast v0, Landroidx/lifecycle/l0;

    .line 55
    .line 56
    goto :goto_39

    .line 57
    :cond_38
    move-object v0, v4

    .line 58
    :goto_39
    if-eqz v0, :cond_75

    .line 59
    .line 60
    invoke-static {v1}, Landroidx/lifecycle/j0;->e(Landroidx/lifecycle/t0;)Landroidx/lifecycle/m0;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v1, v1, Landroidx/lifecycle/m0;->b:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Landroidx/lifecycle/h0;

    .line 71
    .line 72
    if-nez v3, :cond_74

    .line 73
    .line 74
    sget-object v3, Landroidx/lifecycle/h0;->f:[Ljava/lang/Class;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/lifecycle/l0;->b()V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Landroidx/lifecycle/l0;->c:Landroid/os/Bundle;

    .line 80
    .line 81
    if-eqz v3, :cond_57

    .line 82
    .line 83
    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move-object v3, v4

    .line 89
    :goto_58
    iget-object v5, v0, Landroidx/lifecycle/l0;->c:Landroid/os/Bundle;

    .line 90
    .line 91
    if-eqz v5, :cond_5f

    .line 92
    .line 93
    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    iget-object v5, v0, Landroidx/lifecycle/l0;->c:Landroid/os/Bundle;

    .line 97
    .line 98
    if-eqz v5, :cond_6c

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    const/4 v6, 0x1

    .line 105
    if-ne v5, v6, :cond_6c

    .line 106
    .line 107
    iput-object v4, v0, Landroidx/lifecycle/l0;->c:Landroid/os/Bundle;

    .line 108
    .line 109
    :cond_6c
    invoke-static {v3, v2}, Landroidx/lifecycle/j0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/h0;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_74
    return-object v3

    .line 118
    :cond_75
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    .line 121
    .line 122
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw p0

    .line 126
    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 127
    .line 128
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    .line 129
    .line 130
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    .line 137
    .line 138
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p0

    .line 142
    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    .line 145
    .line 146
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0
.end method

.method public static final d(Le1/g;)V
    .registers 4

    .line 1
    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/lifecycle/v;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 8
    .line 9
    sget-object v1, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 10
    .line 11
    if-eq v0, v1, :cond_19

    .line 12
    .line 13
    sget-object v1, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/n;

    .line 14
    .line 15
    if-ne v0, v1, :cond_11

    .line 16
    .line 17
    goto :goto_19

    .line 18
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Failed requirement."

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :cond_19
    :goto_19
    invoke-interface {p0}, Le1/g;->getSavedStateRegistry()Le1/e;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Le1/e;->b()Le1/d;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_45

    .line 35
    .line 36
    new-instance v0, Landroidx/lifecycle/l0;

    .line 37
    .line 38
    invoke-interface {p0}, Le1/g;->getSavedStateRegistry()Le1/e;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    move-object v2, p0

    .line 43
    check-cast v2, Landroidx/lifecycle/t0;

    .line 44
    .line 45
    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/l0;-><init>(Le1/e;Landroidx/lifecycle/t0;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0}, Le1/g;->getSavedStateRegistry()Le1/e;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Le1/e;->c(Ljava/lang/String;Le1/d;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v1, Le1/b;

    .line 62
    .line 63
    const/4 v2, 0x3

    .line 64
    invoke-direct {v1, v2, v0}, Le1/b;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 68
    .line 69
    .line 70
    :cond_45
    return-void
.end method

.method public static final e(Landroidx/lifecycle/t0;)Landroidx/lifecycle/m0;
    .registers 4

    .line 1
    new-instance v0, Landroidx/fragment/app/b1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Landroidx/fragment/app/b1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Landroidx/lifecycle/t0;->getViewModelStore()Landroidx/lifecycle/s0;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, p0, Landroidx/lifecycle/i;

    .line 12
    .line 13
    if-eqz v2, :cond_15

    .line 14
    .line 15
    check-cast p0, Landroidx/lifecycle/i;

    .line 16
    .line 17
    invoke-interface {p0}, Landroidx/lifecycle/i;->getDefaultViewModelCreationExtras()Lv0/b;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    sget-object p0, Lv0/a;->b:Lv0/a;

    .line 23
    .line 24
    :goto_17
    const-string v2, "store"

    .line 25
    .line 26
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const-string v2, "defaultCreationExtras"

    .line 30
    .line 31
    invoke-static {v2, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lc5/h;

    .line 35
    .line 36
    invoke-direct {v2, v1, v0, p0}, Lc5/h;-><init>(Landroidx/lifecycle/s0;Landroidx/lifecycle/r0;Lv0/b;)V

    .line 37
    .line 38
    .line 39
    const-class p0, Landroidx/lifecycle/m0;

    .line 40
    .line 41
    invoke-static {p0}, Ld7/l;->a(Ljava/lang/Class;)Ld7/d;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    .line 46
    .line 47
    invoke-virtual {v2, p0, v0}, Lc5/h;->n(Ld7/d;Ljava/lang/String;)Landroidx/lifecycle/p0;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Landroidx/lifecycle/m0;

    .line 52
    .line 53
    return-object p0
.end method

.method public static final f(Landroid/view/View;Landroidx/lifecycle/t;)V
    .registers 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0900f7

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
