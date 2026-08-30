###### Class q5.m (q5.m)
.class public final Lq5/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ls5/g;

.field public final b:I

.field public final c:Lq5/a;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Z

.field public final h:I

.field public final i:I

.field public j:Z

.field public final k:Z

.field public final l:Lq5/s;

.field public final m:Lq5/t;

.field public final n:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Ls5/g;->c:Ls5/g;

    .line 5
    .line 6
    iput-object v0, p0, Lq5/m;->a:Ls5/g;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lq5/m;->b:I

    .line 10
    .line 11
    sget-object v1, Lq5/h;->a:Lq5/a;

    .line 12
    .line 13
    iput-object v1, p0, Lq5/m;->c:Lq5/a;

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lq5/m;->d:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lq5/m;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lq5/m;->f:Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lq5/m;->g:Z

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    iput v1, p0, Lq5/m;->h:I

    .line 41
    .line 42
    iput v1, p0, Lq5/m;->i:I

    .line 43
    .line 44
    iput-boolean v0, p0, Lq5/m;->j:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lq5/m;->k:Z

    .line 47
    .line 48
    sget-object v0, Lq5/w;->a:Lq5/s;

    .line 49
    .line 50
    iput-object v0, p0, Lq5/m;->l:Lq5/s;

    .line 51
    .line 52
    sget-object v0, Lq5/w;->b:Lq5/t;

    .line 53
    .line 54
    iput-object v0, p0, Lq5/m;->m:Lq5/t;

    .line 55
    .line 56
    new-instance v0, Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lq5/m;->n:Ljava/util/LinkedList;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a()Lq5/l;
    .registers 13

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v0, p0, Lq5/m;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lq5/m;->f:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    add-int/2addr v3, v1

    .line 16
    add-int/lit8 v3, v3, 0x3

    .line 17
    .line 18
    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    sget-boolean v1, Lv5/c;->a:Z

    .line 39
    .line 40
    iget v3, p0, Lq5/m;->h:I

    .line 41
    .line 42
    const/4 v4, 0x2

    .line 43
    if-eq v3, v4, :cond_73

    .line 44
    .line 45
    iget v5, p0, Lq5/m;->i:I

    .line 46
    .line 47
    if-eq v5, v4, :cond_73

    .line 48
    .line 49
    new-instance v4, Lt5/d;

    .line 50
    .line 51
    sget-object v6, Lt5/f;->b:Lt5/e;

    .line 52
    .line 53
    invoke-direct {v4, v6, v3, v5}, Lt5/d;-><init>(Lt5/f;II)V

    .line 54
    .line 55
    .line 56
    sget-object v6, Lt5/s;->a:Lt5/p;

    .line 57
    .line 58
    new-instance v6, Lt5/p;

    .line 59
    .line 60
    const-class v7, Ljava/util/Date;

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    invoke-direct {v6, v7, v4, v9}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 64
    .line 65
    .line 66
    if-eqz v1, :cond_66

    .line 67
    .line 68
    sget-object v4, Lv5/c;->c:Lv5/b;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v7, Lt5/d;

    .line 74
    .line 75
    invoke-direct {v7, v4, v3, v5}, Lt5/d;-><init>(Lt5/f;II)V

    .line 76
    .line 77
    .line 78
    iget-object v4, v4, Lt5/f;->a:Ljava/lang/Class;

    .line 79
    .line 80
    new-instance v10, Lt5/p;

    .line 81
    .line 82
    invoke-direct {v10, v4, v7, v9}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 83
    .line 84
    .line 85
    sget-object v4, Lv5/c;->b:Lv5/b;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    new-instance v7, Lt5/d;

    .line 91
    .line 92
    invoke-direct {v7, v4, v3, v5}, Lt5/d;-><init>(Lt5/f;II)V

    .line 93
    .line 94
    .line 95
    iget-object v3, v4, Lt5/f;->a:Ljava/lang/Class;

    .line 96
    .line 97
    new-instance v4, Lt5/p;

    .line 98
    .line 99
    invoke-direct {v4, v3, v7, v9}, Lt5/p;-><init>(Ljava/lang/Class;Lq5/x;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_68

    .line 103
    :cond_66
    const/4 v10, 0x0

    .line 104
    move-object v4, v10

    .line 105
    :goto_68
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    if-eqz v1, :cond_73

    .line 109
    .line 110
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    :cond_73
    move-object v1, v0

    .line 117
    new-instance v0, Lq5/l;

    .line 118
    .line 119
    new-instance v3, Ljava/util/HashMap;

    .line 120
    .line 121
    iget-object v4, p0, Lq5/m;->d:Ljava/util/HashMap;

    .line 122
    .line 123
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 124
    .line 125
    .line 126
    iget-boolean v4, p0, Lq5/m;->g:Z

    .line 127
    .line 128
    iget-boolean v5, p0, Lq5/m;->j:Z

    .line 129
    .line 130
    new-instance v6, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    new-instance v1, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .line 139
    .line 140
    new-instance v11, Ljava/util/ArrayList;

    .line 141
    .line 142
    iget-object v1, p0, Lq5/m;->n:Ljava/util/LinkedList;

    .line 143
    .line 144
    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lq5/m;->a:Ls5/g;

    .line 148
    .line 149
    iget-object v2, p0, Lq5/m;->c:Lq5/a;

    .line 150
    .line 151
    iget-boolean v6, p0, Lq5/m;->k:Z

    .line 152
    .line 153
    iget v7, p0, Lq5/m;->b:I

    .line 154
    .line 155
    iget-object v9, p0, Lq5/m;->l:Lq5/s;

    .line 156
    .line 157
    iget-object v10, p0, Lq5/m;->m:Lq5/t;

    .line 158
    .line 159
    invoke-direct/range {v0 .. v11}, Lq5/l;-><init>(Ls5/g;Lq5/a;Ljava/util/Map;ZZZILjava/util/List;Lq5/s;Lq5/t;Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    return-object v0
.end method
