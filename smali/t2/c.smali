###### Class t2.c (t2.c)
.class public abstract Lt2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lt2/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public static final a()V
    .registers 8

    .line 1
    const-class v0, Lt2/c;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_f

    .line 10
    :cond_9
    :try_start_9
    invoke-static {}, Lq2/g0;->z()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_10

    .line 15
    .line 16
    :goto_f
    return-void

    .line 17
    :cond_10
    invoke-static {}, Landroid/support/v4/media/session/a;->d()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_1a

    .line 23
    .line 24
    new-array v1, v2, [Ljava/io/File;

    .line 25
    .line 26
    goto :goto_28

    .line 27
    :cond_1a
    new-instance v3, Lm1/g;

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    invoke-direct {v3, v4}, Lm1/g;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_28

    .line 38
    .line 39
    new-array v1, v2, [Ljava/io/File;

    .line 40
    .line 41
    :cond_28
    :goto_28
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    array-length v4, v1

    .line 44
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    array-length v4, v1

    .line 48
    move v5, v2

    .line 49
    :goto_30
    if-ge v5, v4, :cond_40

    .line 50
    .line 51
    aget-object v6, v1, v5

    .line 52
    .line 53
    invoke-static {v6}, La2/c;->i(Ljava/io/File;)Ls2/d;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_30

    .line 63
    :catchall_3e
    move-exception v1

    .line 64
    goto :goto_a1

    .line 65
    :cond_40
    new-instance v1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    move v5, v2

    .line 75
    :cond_4a
    :goto_4a
    if-ge v5, v4, :cond_5f

    .line 76
    .line 77
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    add-int/lit8 v5, v5, 0x1

    .line 82
    .line 83
    move-object v7, v6

    .line 84
    check-cast v7, Ls2/d;

    .line 85
    .line 86
    invoke-virtual {v7}, Ls2/d;->a()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_4a

    .line 91
    .line 92
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_4a

    .line 96
    :cond_5f
    new-instance v3, Lg0/a;

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    invoke-direct {v3, v4}, Lg0/a;-><init>(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {v1, v3}, Ls6/g;->u(Ljava/util/ArrayList;Ljava/util/Comparator;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v3, Lorg/json/JSONArray;

    .line 107
    .line 108
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    const/4 v5, 0x5

    .line 116
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    invoke-static {v2, v4}, La2/c;->m(II)Lh7/c;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lh7/a;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    :goto_7f
    move-object v4, v2

    .line 129
    check-cast v4, Lh7/b;

    .line 130
    .line 131
    iget-boolean v4, v4, Lh7/b;->c:Z

    .line 132
    .line 133
    if-eqz v4, :cond_95

    .line 134
    .line 135
    move-object v4, v2

    .line 136
    check-cast v4, Lh7/b;

    .line 137
    .line 138
    invoke-virtual {v4}, Lh7/b;->nextInt()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 147
    .line 148
    .line 149
    goto :goto_7f

    .line 150
    :cond_95
    const-string v2, "anr_reports"

    .line 151
    .line 152
    new-instance v4, Lt2/b;

    .line 153
    .line 154
    const/4 v5, 0x0

    .line 155
    invoke-direct {v4, v1, v5}, Lt2/b;-><init>(Ljava/util/List;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/a;->j(Ljava/lang/String;Lorg/json/JSONArray;Lx1/v;)V
    :try_end_a0
    .catchall {:try_start_9 .. :try_end_a0} :catchall_3e

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_a1
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
