###### Class g0.d (g0.d)
.class public abstract Lg0/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ls/i;

.field public static final b:Lg0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ls/i;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ls/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lg0/d;->a:Ls/i;

    .line 8
    .line 9
    new-instance v0, Lg0/a;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lg0/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lg0/d;->b:Lg0/a;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lg/j;
    .registers 7

    .line 1
    const-string v0, "FontProvider.getFontFamilyResult"

    .line 2
    .line 3
    invoke-static {v0}, Lz7/d;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_44

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lg0/e;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v2, v4}, Lg0/d;->b(Landroid/content/pm/PackageManager;Lg0/e;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_38

    .line 37
    .line 38
    new-instance p0, Lg/j;

    .line 39
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    iput p1, p0, Lg/j;->a:I

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lg/j;->b:Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_4e

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_38
    :try_start_38
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {p0, v2, v3}, Lg0/d;->c(Landroid/content/Context;Lg0/e;Ljava/lang/String;)[Lg0/j;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_b

    .line 69
    :cond_44
    new-instance p0, Lg/j;

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    invoke-direct {p0, v0, p1}, Lg/j;-><init>(Ljava/util/ArrayList;I)V
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4e

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 76
    .line 77
    .line 78
    return-object p0

    .line 79
    :catchall_4e
    move-exception p0

    .line 80
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static b(Landroid/content/pm/PackageManager;Lg0/e;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 12

    .line 1
    sget-object v0, Lg0/d;->b:Lg0/a;

    .line 2
    .line 3
    sget-object v1, Lg0/d;->a:Ls/i;

    .line 4
    .line 5
    const-string v2, "Found content provider "

    .line 6
    .line 7
    const-string v3, "No package found for authority: "

    .line 8
    .line 9
    const-string v4, "FontProvider.getProvider"

    .line 10
    .line 11
    invoke-static {v4}, Lz7/d;->a(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_d
    iget-object v4, p1, Lg0/e;->d:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_d9

    .line 15
    .line 16
    iget-object v5, p1, Lg0/e;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p1, Lg0/e;->b:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    if-eqz v4, :cond_17

    .line 22
    .line 23
    goto :goto_1b

    .line 24
    :cond_17
    :try_start_17
    invoke-static {p2, v6}, Lb0/b;->h(Landroid/content/res/Resources;I)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    :goto_1b
    new-instance p2, Lg0/c;

    .line 29
    .line 30
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v5, p2, Lg0/c;->a:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p2, Lg0/c;->b:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v4, p2, Lg0/c;->c:Ljava/util/List;

    .line 38
    .line 39
    invoke-virtual {v1, p2}, Ls/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Landroid/content/pm/ProviderInfo;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_d9

    .line 44
    .line 45
    if-eqz v7, :cond_32

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 48
    .line 49
    .line 50
    return-object v7

    .line 51
    :cond_32
    :try_start_32
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    if-eqz v7, :cond_c7

    .line 56
    .line 57
    iget-object v3, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_ad

    .line 64
    .line 65
    iget-object p1, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    const/16 v2, 0x40

    .line 68
    .line 69
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 74
    .line 75
    new-instance p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    array-length v2, p0

    .line 81
    move v3, v6

    .line 82
    :goto_51
    if-ge v3, v2, :cond_5f

    .line 83
    .line 84
    aget-object v5, p0, v3

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_51

    .line 96
    :cond_5f
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 97
    .line 98
    .line 99
    move p0, v6

    .line 100
    :goto_63
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-ge p0, v2, :cond_a8

    .line 105
    .line 106
    new-instance v2, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    if-eq v3, v5, :cond_82

    .line 129
    .line 130
    goto :goto_9b

    .line 131
    :cond_82
    move v3, v6

    .line 132
    :goto_83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-ge v3, v5, :cond_a1

    .line 137
    .line 138
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, [B

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    check-cast v8, [B

    .line 149
    .line 150
    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    if-nez v5, :cond_9e

    .line 155
    .line 156
    :goto_9b
    add-int/lit8 p0, p0, 0x1

    .line 157
    .line 158
    goto :goto_63

    .line 159
    :cond_9e
    add-int/lit8 v3, v3, 0x1

    .line 160
    .line 161
    goto :goto_83

    .line 162
    :cond_a1
    invoke-virtual {v1, p2, v7}, Ls/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a4
    .catchall {:try_start_32 .. :try_end_a4} :catchall_d9

    .line 163
    .line 164
    .line 165
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 166
    .line 167
    .line 168
    return-object v7

    .line 169
    :cond_a8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 170
    .line 171
    .line 172
    const/4 p0, 0x0

    .line 173
    return-object p0

    .line 174
    :cond_ad
    :try_start_ad
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 175
    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, ", but package was not "

    .line 185
    .line 186
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p0

    .line 200
    :cond_c7
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 201
    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0
    :try_end_d9
    .catchall {:try_start_ad .. :try_end_d9} :catchall_d9

    .line 218
    :catchall_d9
    move-exception p0

    .line 219
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 220
    .line 221
    .line 222
    throw p0
.end method

.method public static c(Landroid/content/Context;Lg0/e;Ljava/lang/String;)[Lg0/j;
    .registers 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "content"

    .line 6
    .line 7
    const-string v3, "FontProvider.query"

    .line 8
    .line 9
    invoke-static {v3}, Lz7/d;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_b
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v4, Landroid/net/Uri$Builder;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v5, Landroid/net/Uri$Builder;

    .line 35
    .line 36
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "file"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 v5, 0x18

    .line 60
    .line 61
    if-ge v2, v5, :cond_44

    .line 62
    .line 63
    new-instance v2, Lk1/h;

    .line 64
    .line 65
    invoke-direct {v2, v0, v4}, Lk1/h;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 66
    .line 67
    .line 68
    goto :goto_49

    .line 69
    :cond_44
    new-instance v2, Lo5/c;

    .line 70
    .line 71
    invoke-direct {v2, v0, v4}, Lo5/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_118

    .line 72
    .line 73
    .line 74
    :goto_49
    const/4 v5, 0x0

    .line 75
    :try_start_4a
    const-string v6, "_id"

    .line 76
    .line 77
    const-string v7, "file_id"

    .line 78
    .line 79
    const-string v8, "font_ttc_index"

    .line 80
    .line 81
    const-string v9, "font_variation_settings"

    .line 82
    .line 83
    const-string v10, "font_weight"

    .line 84
    .line 85
    const-string v11, "font_italic"

    .line 86
    .line 87
    const-string v12, "result_code"

    .line 88
    .line 89
    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v6, "ContentQueryWrapper.query"

    .line 94
    .line 95
    invoke-static {v6}, Lz7/d;->a(Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_b1

    .line 96
    .line 97
    .line 98
    move-object/from16 v6, p1

    .line 99
    .line 100
    :try_start_63
    iget-object v6, v6, Lg0/e;->c:Ljava/lang/String;

    .line 101
    .line 102
    filled-new-array {v6}, [Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {v2, v4, v0, v6}, Lg0/b;->c(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 107
    .line 108
    .line 109
    move-result-object v5
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_10a

    .line 110
    :try_start_6d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 111
    .line 112
    .line 113
    if-eqz v5, :cond_f5

    .line 114
    .line 115
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-lez v6, :cond_f5

    .line 120
    .line 121
    const-string v3, "result_code"

    .line 122
    .line 123
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    new-instance v6, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v7, "_id"

    .line 133
    .line 134
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    const-string v8, "file_id"

    .line 139
    .line 140
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    const-string v9, "font_ttc_index"

    .line 145
    .line 146
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    const-string v10, "font_weight"

    .line 151
    .line 152
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    const-string v11, "font_italic"

    .line 157
    .line 158
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    :goto_a1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_f4

    .line 167
    .line 168
    const/4 v12, -0x1

    .line 169
    if-eq v3, v12, :cond_b3

    .line 170
    .line 171
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 172
    .line 173
    .line 174
    move-result v13

    .line 175
    move/from16 v17, v13

    .line 176
    .line 177
    goto :goto_b5

    .line 178
    :catchall_b1
    move-exception v0

    .line 179
    goto :goto_10f

    .line 180
    :cond_b3
    const/16 v17, 0x0

    .line 181
    .line 182
    :goto_b5
    if-eq v9, v12, :cond_bd

    .line 183
    .line 184
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    move v14, v13

    .line 189
    goto :goto_be

    .line 190
    :cond_bd
    const/4 v14, 0x0

    .line 191
    :goto_be
    if-ne v8, v12, :cond_cb

    .line 192
    .line 193
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v12

    .line 197
    invoke-static {v4, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    :goto_c8
    move-object v13, v12

    .line 202
    const/4 v12, -0x1

    .line 203
    goto :goto_d4

    .line 204
    :cond_cb
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    .line 205
    .line 206
    .line 207
    move-result-wide v12

    .line 208
    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    goto :goto_c8

    .line 213
    :goto_d4
    if-eq v10, v12, :cond_db

    .line 214
    .line 215
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    goto :goto_dd

    .line 220
    :cond_db
    const/16 v15, 0x190

    .line 221
    .line 222
    :goto_dd
    if-eq v11, v12, :cond_e9

    .line 223
    .line 224
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 225
    .line 226
    .line 227
    move-result v12

    .line 228
    const/4 v0, 0x1

    .line 229
    if-ne v12, v0, :cond_e9

    .line 230
    .line 231
    move/from16 v16, v0

    .line 232
    .line 233
    goto :goto_eb

    .line 234
    :cond_e9
    const/16 v16, 0x0

    .line 235
    .line 236
    :goto_eb
    new-instance v12, Lg0/j;

    .line 237
    .line 238
    invoke-direct/range {v12 .. v17}, Lg0/j;-><init>(Landroid/net/Uri;IIZI)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f3
    .catchall {:try_start_6d .. :try_end_f3} :catchall_b1

    .line 242
    .line 243
    .line 244
    goto :goto_a1

    .line 245
    :cond_f4
    move-object v3, v6

    .line 246
    :cond_f5
    if-eqz v5, :cond_fa

    .line 247
    .line 248
    :try_start_f7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 249
    .line 250
    .line 251
    :cond_fa
    invoke-interface {v2}, Lg0/b;->close()V

    .line 252
    .line 253
    .line 254
    const/4 v0, 0x0

    .line 255
    new-array v0, v0, [Lg0/j;

    .line 256
    .line 257
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    check-cast v0, [Lg0/j;
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_118

    .line 262
    .line 263
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 264
    .line 265
    .line 266
    return-object v0

    .line 267
    :catchall_10a
    move-exception v0

    .line 268
    :try_start_10b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 269
    .line 270
    .line 271
    throw v0
    :try_end_10f
    .catchall {:try_start_10b .. :try_end_10f} :catchall_b1

    .line 272
    :goto_10f
    if-eqz v5, :cond_114

    .line 273
    .line 274
    :try_start_111
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 275
    .line 276
    .line 277
    :cond_114
    invoke-interface {v2}, Lg0/b;->close()V

    .line 278
    .line 279
    .line 280
    throw v0
    :try_end_118
    .catchall {:try_start_111 .. :try_end_118} :catchall_118

    .line 281
    :catchall_118
    move-exception v0

    .line 282
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 283
    .line 284
    .line 285
    throw v0
.end method
