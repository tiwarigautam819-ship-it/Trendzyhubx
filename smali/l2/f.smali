###### Class l2.f (l2.f)
.class public final Ll2/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ll2/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ll2/f;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll2/f;->a:Ll2/f;

    .line 7
    .line 8
    return-void
.end method

.method public static final a([I)I
    .registers 8

    .line 1
    array-length v0, p0

    .line 2
    if-eqz v0, :cond_38

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget v1, p0, v0

    .line 6
    .line 7
    new-instance v2, Lh7/c;

    .line 8
    .line 9
    array-length v3, p0

    .line 10
    const/4 v4, 0x1

    .line 11
    sub-int/2addr v3, v4

    .line 12
    invoke-direct {v2, v4, v3, v4}, Lh7/a;-><init>(III)V

    .line 13
    .line 14
    .line 15
    iget v3, v2, Lh7/a;->b:I

    .line 16
    .line 17
    iget v2, v2, Lh7/a;->c:I

    .line 18
    .line 19
    if-lez v2, :cond_1a

    .line 20
    .line 21
    if-gt v4, v3, :cond_18

    .line 22
    .line 23
    :goto_16
    move v5, v4

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    move v5, v0

    .line 26
    goto :goto_1d

    .line 27
    :cond_1a
    if-lt v4, v3, :cond_18

    .line 28
    .line 29
    goto :goto_16

    .line 30
    :goto_1d
    if-eqz v5, :cond_20

    .line 31
    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v4, v3

    .line 34
    :goto_21
    if-eqz v5, :cond_37

    .line 35
    .line 36
    if-ne v4, v3, :cond_30

    .line 37
    .line 38
    if-eqz v5, :cond_2a

    .line 39
    .line 40
    move v5, v0

    .line 41
    move v6, v4

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 44
    .line 45
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_30
    add-int v6, v4, v2

    .line 50
    .line 51
    :goto_32
    aget v4, p0, v4

    .line 52
    .line 53
    mul-int/2addr v1, v4

    .line 54
    move v4, v6

    .line 55
    goto :goto_21

    .line 56
    :cond_37
    return v1

    .line 57
    :cond_38
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 58
    .line 59
    const-string v0, "Empty array can\'t be reduced."

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0
.end method

.method public static final b()Ljava/io/File;
    .registers 5

    .line 1
    const-class v0, Ll2/f;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "facebook_ml/"

    .line 22
    .line 23
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_29

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_27

    .line 36
    if-eqz v0, :cond_26

    .line 37
    .line 38
    goto :goto_29

    .line 39
    :cond_26
    return-object v2

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    :goto_29
    return-object v1

    .line 43
    :goto_2a
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "str"

    .line 10
    .line 11
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v0, v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    move v5, v4

    .line 23
    :goto_16
    if-gt v4, v0, :cond_3e

    .line 24
    .line 25
    if-nez v5, :cond_1c

    .line 26
    .line 27
    move v6, v4

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v6, v0

    .line 30
    :goto_1d
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/16 v7, 0x20

    .line 35
    .line 36
    invoke-static {v6, v7}, Ld7/g;->g(II)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-gtz v6, :cond_2b

    .line 41
    .line 42
    move v6, v2

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    move v6, v3

    .line 45
    :goto_2c
    if-nez v5, :cond_35

    .line 46
    .line 47
    if-nez v6, :cond_32

    .line 48
    .line 49
    move v5, v2

    .line 50
    goto :goto_16

    .line 51
    :cond_32
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_16

    .line 54
    :cond_35
    if-nez v6, :cond_38

    .line 55
    .line 56
    goto :goto_3e

    .line 57
    :cond_38
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_16

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    goto/16 :goto_b4

    .line 62
    .line 63
    :cond_3e
    :goto_3e
    add-int/2addr v0, v2

    .line 64
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "\\s+"

    .line 73
    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v2, "compile(...)"

    .line 79
    .line 80
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const-string v2, "input"

    .line 84
    .line 85
    invoke-static {v2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Lk7/g;->H(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-nez v2, :cond_6d

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_9e

    .line 110
    :cond_6d
    new-instance v2, Ljava/util/ArrayList;

    .line 111
    .line 112
    const/16 v4, 0xa

    .line 113
    .line 114
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .line 116
    .line 117
    move v4, v3

    .line 118
    :cond_75
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_75

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-object p1, v2

    .line 159
    :goto_9e
    check-cast p1, Ljava/util/Collection;

    .line 160
    .line 161
    new-array v0, v3, [Ljava/lang/String;

    .line 162
    .line 163
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, [Ljava/lang/String;

    .line 168
    .line 169
    const-string v0, " "

    .line 170
    .line 171
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const-string v0, "join(\" \", strArray)"

    .line 176
    .line 177
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b3
    .catchall {:try_start_8 .. :try_end_b3} :catchall_3b

    .line 178
    .line 179
    .line 180
    return-object p1

    .line 181
    :goto_b4
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-object v1
.end method

.method public d(Ljava/lang/String;)[I
    .registers 8

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "texts"

    .line 10
    .line 11
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x80

    .line 15
    .line 16
    new-array v2, v0, [I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ll2/f;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v3, "UTF-8"

    .line 23
    .line 24
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "forName(\"UTF-8\")"

    .line 29
    .line 30
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v3, "this as java.lang.String).getBytes(charset)"

    .line 38
    .line 39
    invoke-static {v3, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    move v4, v3

    .line 44
    :goto_2b
    if-ge v4, v0, :cond_3e

    .line 45
    .line 46
    array-length v5, p1

    .line 47
    if-ge v4, v5, :cond_39

    .line 48
    .line 49
    aget-byte v5, p1, v4

    .line 50
    .line 51
    and-int/lit16 v5, v5, 0xff

    .line 52
    .line 53
    aput v5, v2, v4

    .line 54
    .line 55
    goto :goto_3b

    .line 56
    :catchall_37
    move-exception p1

    .line 57
    goto :goto_3f

    .line 58
    :cond_39
    aput v3, v2, v4
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_37

    .line 59
    .line 60
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_2b

    .line 63
    :cond_3e
    return-object v2

    .line 64
    :goto_3f
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v1
.end method
