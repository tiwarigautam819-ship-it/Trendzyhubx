###### Class androidx.lifecycle.n0 (androidx.lifecycle.n0)
.class public final Landroidx/lifecycle/n0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r0;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/q0;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/o;

.field public final e:Le1/e;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/fragment/app/h0;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p2}, Le1/g;->getSavedStateRegistry()Le1/e;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/lifecycle/n0;->e:Le1/e;

    .line 9
    .line 10
    invoke-interface {p2}, Landroidx/lifecycle/t;->getLifecycle()Landroidx/lifecycle/o;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Landroidx/lifecycle/n0;->d:Landroidx/lifecycle/o;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/lifecycle/n0;->c:Landroid/os/Bundle;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/lifecycle/n0;->a:Landroid/app/Application;

    .line 19
    .line 20
    if-eqz p1, :cond_26

    .line 21
    .line 22
    sget-object p2, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/q0;

    .line 23
    .line 24
    if-nez p2, :cond_20

    .line 25
    .line 26
    new-instance p2, Landroidx/lifecycle/q0;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Landroidx/lifecycle/q0;-><init>(Landroid/app/Application;)V

    .line 29
    .line 30
    .line 31
    sput-object p2, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/q0;

    .line 32
    .line 33
    :cond_20
    sget-object p1, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/q0;

    .line 34
    .line 35
    invoke-static {p1}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_2c

    .line 39
    :cond_26
    new-instance p1, Landroidx/lifecycle/q0;

    .line 40
    .line 41
    const/4 p2, 0x0

    .line 42
    invoke-direct {p1, p2}, Landroidx/lifecycle/q0;-><init>(Landroid/app/Application;)V

    .line 43
    .line 44
    .line 45
    :goto_2c
    iput-object p1, p0, Landroidx/lifecycle/n0;->b:Landroidx/lifecycle/q0;

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/p0;
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/n0;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/p0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public final b(Ljava/lang/Class;Lv0/c;)Landroidx/lifecycle/p0;
    .registers 8

    .line 1
    iget-object v0, p2, Lv0/b;->a:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    sget-object v1, Lw0/b;->a:Lw0/b;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v1, :cond_78

    .line 12
    .line 13
    sget-object v2, Landroidx/lifecycle/j0;->a:Le5/e;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_67

    .line 20
    .line 21
    sget-object v2, Landroidx/lifecycle/j0;->b:Le5/e;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_67

    .line 28
    .line 29
    sget-object v1, Landroidx/lifecycle/q0;->e:Le5/e;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/app/Application;

    .line 36
    .line 37
    const-class v1, Landroidx/lifecycle/a;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_35

    .line 44
    .line 45
    if-eqz v0, :cond_35

    .line 46
    .line 47
    sget-object v2, Landroidx/lifecycle/o0;->a:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {p1, v2}, Landroidx/lifecycle/o0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_3b

    .line 54
    :cond_35
    sget-object v2, Landroidx/lifecycle/o0;->b:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {p1, v2}, Landroidx/lifecycle/o0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_3b
    if-nez v2, :cond_44

    .line 61
    .line 62
    iget-object v0, p0, Landroidx/lifecycle/n0;->b:Landroidx/lifecycle/q0;

    .line 63
    .line 64
    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/q0;->b(Ljava/lang/Class;Lv0/c;)Landroidx/lifecycle/p0;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_44
    const/4 v3, 0x1

    .line 70
    const/4 v4, 0x0

    .line 71
    if-eqz v1, :cond_5a

    .line 72
    .line 73
    if-eqz v0, :cond_5a

    .line 74
    .line 75
    invoke-static {p2}, Landroidx/lifecycle/j0;->c(Lv0/c;)Landroidx/lifecycle/h0;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    const/4 v1, 0x2

    .line 80
    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object v0, v1, v4

    .line 83
    .line 84
    aput-object p2, v1, v3

    .line 85
    .line 86
    invoke-static {p1, v2, v1}, Landroidx/lifecycle/o0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/p0;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    return-object p1

    .line 91
    :cond_5a
    invoke-static {p2}, Landroidx/lifecycle/j0;->c(Lv0/c;)Landroidx/lifecycle/h0;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-array v0, v3, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object p2, v0, v4

    .line 98
    .line 99
    invoke-static {p1, v2, v0}, Landroidx/lifecycle/o0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/p0;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_67
    iget-object p2, p0, Landroidx/lifecycle/n0;->d:Landroidx/lifecycle/o;

    .line 105
    .line 106
    if-eqz p2, :cond_70

    .line 107
    .line 108
    invoke-virtual {p0, p1, v1}, Landroidx/lifecycle/n0;->d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/p0;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_70
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 114
    .line 115
    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_78
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    .line 124
    .line 125
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public final synthetic c(Ld7/d;Lv0/c;)Landroidx/lifecycle/p0;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, La1/a;->a(Landroidx/lifecycle/r0;Ld7/d;Lv0/c;)Landroidx/lifecycle/p0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/p0;
    .registers 12

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/n0;->d:Landroidx/lifecycle/o;

    .line 2
    .line 3
    if-eqz v0, :cond_b7

    .line 4
    .line 5
    const-class v1, Landroidx/lifecycle/a;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_17

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/lifecycle/n0;->a:Landroid/app/Application;

    .line 14
    .line 15
    if-eqz v2, :cond_17

    .line 16
    .line 17
    sget-object v2, Landroidx/lifecycle/o0;->a:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p1, v2}, Landroidx/lifecycle/o0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_1d

    .line 24
    :cond_17
    sget-object v2, Landroidx/lifecycle/o0;->b:Ljava/util/List;

    .line 25
    .line 26
    invoke-static {p1, v2}, Landroidx/lifecycle/o0;->a(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_1d
    const/4 v3, 0x2

    .line 31
    if-nez v2, :cond_40

    .line 32
    .line 33
    iget-object p2, p0, Landroidx/lifecycle/n0;->a:Landroid/app/Application;

    .line 34
    .line 35
    if-eqz p2, :cond_2b

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/lifecycle/n0;->b:Landroidx/lifecycle/q0;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroidx/lifecycle/q0;->a(Ljava/lang/Class;)Landroidx/lifecycle/p0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_2b
    sget-object p2, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/b1;

    .line 45
    .line 46
    if-nez p2, :cond_36

    .line 47
    .line 48
    new-instance p2, Landroidx/fragment/app/b1;

    .line 49
    .line 50
    invoke-direct {p2, v3}, Landroidx/fragment/app/b1;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object p2, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/b1;

    .line 54
    .line 55
    :cond_36
    sget-object p2, Landroidx/fragment/app/b1;->b:Landroidx/fragment/app/b1;

    .line 56
    .line 57
    invoke-static {p2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Landroidx/fragment/app/b1;->a(Ljava/lang/Class;)Landroidx/lifecycle/p0;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_40
    iget-object v4, p0, Landroidx/lifecycle/n0;->e:Le1/e;

    .line 66
    .line 67
    invoke-static {v4}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, p0, Landroidx/lifecycle/n0;->c:Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-virtual {v4, p2}, Le1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    sget-object v7, Landroidx/lifecycle/h0;->f:[Ljava/lang/Class;

    .line 77
    .line 78
    invoke-static {v6, v5}, Landroidx/lifecycle/j0;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/h0;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    new-instance v6, Landroidx/lifecycle/i0;

    .line 83
    .line 84
    invoke-direct {v6, p2, v5}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/String;Landroidx/lifecycle/h0;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v4, v0}, Landroidx/lifecycle/i0;->c(Le1/e;Landroidx/lifecycle/o;)V

    .line 88
    .line 89
    .line 90
    move-object p2, v0

    .line 91
    check-cast p2, Landroidx/lifecycle/v;

    .line 92
    .line 93
    iget-object p2, p2, Landroidx/lifecycle/v;->c:Landroidx/lifecycle/n;

    .line 94
    .line 95
    sget-object v7, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/n;

    .line 96
    .line 97
    const/4 v8, 0x1

    .line 98
    if-eq p2, v7, :cond_75

    .line 99
    .line 100
    sget-object v7, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/n;

    .line 101
    .line 102
    invoke-virtual {p2, v7}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-ltz p2, :cond_6c

    .line 107
    .line 108
    goto :goto_75

    .line 109
    :cond_6c
    new-instance p2, Landroidx/lifecycle/f;

    .line 110
    .line 111
    invoke-direct {p2, v0, v8, v4}, Landroidx/lifecycle/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p2}, Landroidx/lifecycle/o;->a(Landroidx/lifecycle/s;)V

    .line 115
    .line 116
    .line 117
    goto :goto_78

    .line 118
    :cond_75
    :goto_75
    invoke-virtual {v4}, Le1/e;->d()V

    .line 119
    .line 120
    .line 121
    :goto_78
    const/4 p2, 0x0

    .line 122
    if-eqz v1, :cond_8a

    .line 123
    .line 124
    iget-object v0, p0, Landroidx/lifecycle/n0;->a:Landroid/app/Application;

    .line 125
    .line 126
    if-eqz v0, :cond_8a

    .line 127
    .line 128
    new-array v1, v3, [Ljava/lang/Object;

    .line 129
    .line 130
    aput-object v0, v1, p2

    .line 131
    .line 132
    aput-object v5, v1, v8

    .line 133
    .line 134
    invoke-static {p1, v2, v1}, Landroidx/lifecycle/o0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/p0;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_92

    .line 139
    :cond_8a
    new-array v0, v8, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v5, v0, p2

    .line 142
    .line 143
    invoke-static {p1, v2, v0}, Landroidx/lifecycle/o0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/p0;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    :goto_92
    const-string p2, "androidx.lifecycle.savedstate.vm.tag"

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object v0, p1, Landroidx/lifecycle/p0;->a:Lw0/a;

    .line 153
    .line 154
    if-eqz v0, :cond_b6

    .line 155
    .line 156
    iget-boolean v1, v0, Lw0/a;->d:Z

    .line 157
    .line 158
    if-eqz v1, :cond_a3

    .line 159
    .line 160
    invoke-static {v6}, Lw0/a;->a(Ljava/lang/AutoCloseable;)V

    .line 161
    .line 162
    .line 163
    return-object p1

    .line 164
    :cond_a3
    iget-object v1, v0, Lw0/a;->a:Lw0/b;

    .line 165
    .line 166
    monitor-enter v1

    .line 167
    :try_start_a6
    iget-object v0, v0, Lw0/a;->b:Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    invoke-interface {v0, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    check-cast p2, Ljava/lang/AutoCloseable;
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_b3

    .line 174
    .line 175
    monitor-exit v1

    .line 176
    invoke-static {p2}, Lw0/a;->a(Ljava/lang/AutoCloseable;)V

    .line 177
    .line 178
    .line 179
    return-object p1

    .line 180
    :catchall_b3
    move-exception p1

    .line 181
    monitor-exit v1

    .line 182
    throw p1

    .line 183
    :cond_b6
    return-object p1

    .line 184
    :cond_b7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 185
    .line 186
    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    .line 187
    .line 188
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method
