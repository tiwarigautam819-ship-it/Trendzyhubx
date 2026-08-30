###### Class c2.d (c2.d)
.class public final Lc2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lc2/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lc2/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc2/d;->a:Lc2/d;

    .line 7
    .line 8
    return-void
.end method

.method public static final b(Landroid/view/View;)Z
    .registers 8

    .line 1
    sget-object v0, Lc2/d;->a:Lc2/d;

    .line 2
    .line 3
    const-class v1, Lc2/d;

    .line 4
    .line 5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_d

    .line 11
    .line 12
    goto/16 :goto_c8

    .line 13
    .line 14
    :cond_d
    :try_start_d
    instance-of v2, p0, Landroid/widget/TextView;

    .line 15
    .line 16
    if-eqz v2, :cond_c8

    .line 17
    .line 18
    move-object v2, p0

    .line 19
    check-cast v2, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_c5

    .line 25
    const/4 v5, 0x1

    .line 26
    if-eqz v4, :cond_1d

    .line 27
    .line 28
    :goto_1b
    move v2, v3

    .line 29
    goto :goto_33

    .line 30
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/16 v6, 0x80

    .line 35
    .line 36
    if-ne v4, v6, :cond_27

    .line 37
    .line 38
    move v2, v5

    .line 39
    goto :goto_33

    .line 40
    :cond_27
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2e

    .line 45
    .line 46
    goto :goto_33

    .line 47
    :catchall_2e
    move-exception v2

    .line 48
    :try_start_2f
    invoke-static {v2, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1b

    .line 52
    :goto_33
    if-nez v2, :cond_c7

    .line 53
    .line 54
    move-object v2, p0

    .line 55
    check-cast v2, Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lc2/d;->a(Landroid/widget/TextView;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_c7

    .line 62
    .line 63
    move-object v2, p0

    .line 64
    check-cast v2, Landroid/widget/TextView;

    .line 65
    .line 66
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4
    :try_end_45
    .catchall {:try_start_2f .. :try_end_45} :catchall_c5

    .line 70
    if-eqz v4, :cond_49

    .line 71
    .line 72
    :cond_47
    :goto_47
    move v2, v3

    .line 73
    goto :goto_58

    .line 74
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    .line 75
    .line 76
    .line 77
    move-result v2
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_53

    .line 78
    const/16 v4, 0x60

    .line 79
    .line 80
    if-ne v2, v4, :cond_47

    .line 81
    .line 82
    move v2, v5

    .line 83
    goto :goto_58

    .line 84
    :catchall_53
    move-exception v2

    .line 85
    :try_start_54
    invoke-static {v2, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_47

    .line 89
    :goto_58
    if-nez v2, :cond_c7

    .line 90
    .line 91
    move-object v2, p0

    .line 92
    check-cast v2, Landroid/widget/TextView;

    .line 93
    .line 94
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_c5

    .line 98
    if-eqz v4, :cond_65

    .line 99
    .line 100
    :cond_63
    :goto_63
    move v2, v3

    .line 101
    goto :goto_74

    .line 102
    :cond_65
    :try_start_65
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    .line 103
    .line 104
    .line 105
    move-result v2
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_6f

    .line 106
    const/16 v4, 0x70

    .line 107
    .line 108
    if-ne v2, v4, :cond_63

    .line 109
    .line 110
    move v2, v5

    .line 111
    goto :goto_74

    .line 112
    :catchall_6f
    move-exception v2

    .line 113
    :try_start_70
    invoke-static {v2, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_63

    .line 117
    :goto_74
    if-nez v2, :cond_c7

    .line 118
    .line 119
    move-object v2, p0

    .line 120
    check-cast v2, Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v4
    :try_end_7d
    .catchall {:try_start_70 .. :try_end_7d} :catchall_c5

    .line 126
    if-eqz v4, :cond_81

    .line 127
    .line 128
    :cond_7f
    :goto_7f
    move v2, v3

    .line 129
    goto :goto_8f

    .line 130
    :cond_81
    :try_start_81
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    .line 131
    .line 132
    .line 133
    move-result v2
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_8a

    .line 134
    const/4 v4, 0x3

    .line 135
    if-ne v2, v4, :cond_7f

    .line 136
    .line 137
    move v2, v5

    .line 138
    goto :goto_8f

    .line 139
    :catchall_8a
    move-exception v2

    .line 140
    :try_start_8b
    invoke-static {v2, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_7f

    .line 144
    :goto_8f
    if-nez v2, :cond_c7

    .line 145
    .line 146
    check-cast p0, Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_c5

    .line 152
    if-eqz v2, :cond_9b

    .line 153
    .line 154
    :cond_99
    :goto_99
    move p0, v3

    .line 155
    goto :goto_c2

    .line 156
    :cond_9b
    :try_start_9b
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const/16 v4, 0x20

    .line 161
    .line 162
    if-ne v2, v4, :cond_a5

    .line 163
    .line 164
    move p0, v5

    .line 165
    goto :goto_c2

    .line 166
    :cond_a5
    invoke-static {p0}, Lc2/e;->i(Landroid/view/View;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    if-eqz p0, :cond_99

    .line 171
    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_b2

    .line 177
    .line 178
    goto :goto_99

    .line 179
    :cond_b2
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 180
    .line 181
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 186
    .line 187
    .line 188
    move-result p0
    :try_end_bc
    .catchall {:try_start_9b .. :try_end_bc} :catchall_bd

    .line 189
    goto :goto_c2

    .line 190
    :catchall_bd
    move-exception p0

    .line 191
    :try_start_be
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c5

    .line 192
    .line 193
    .line 194
    goto :goto_99

    .line 195
    :goto_c2
    if-eqz p0, :cond_c8

    .line 196
    .line 197
    goto :goto_c7

    .line 198
    :catchall_c5
    move-exception p0

    .line 199
    goto :goto_c9

    .line 200
    :cond_c7
    :goto_c7
    move v3, v5

    .line 201
    :cond_c8
    :goto_c8
    return v3

    .line 202
    :goto_c9
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    return v3
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)Z
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
    return v1

    .line 9
    :cond_8
    :try_start_8
    invoke-static {p1}, Lc2/e;->i(Landroid/view/View;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "\\s"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "compile(...)"

    .line 20
    .line 21
    invoke-static {v2, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    const-string v3, "input"

    .line 27
    .line 28
    invoke-static {v3, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "replaceAll(...)"

    .line 40
    .line 41
    invoke-static {v0, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v2, 0xc

    .line 49
    .line 50
    if-lt v0, v2, :cond_83

    .line 51
    .line 52
    const/16 v2, 0x13

    .line 53
    .line 54
    if-le v0, v2, :cond_38

    .line 55
    .line 56
    goto :goto_83

    .line 57
    :cond_38
    const/4 v2, 0x1

    .line 58
    sub-int/2addr v0, v2

    .line 59
    move v3, v1

    .line 60
    move v4, v3

    .line 61
    :goto_3c
    const/4 v5, -0x1

    .line 62
    const/16 v6, 0xa

    .line 63
    .line 64
    if-ge v5, v0, :cond_7f

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-nez v7, :cond_4c

    .line 75
    .line 76
    return v1

    .line 77
    :cond_4c
    invoke-static {v5, v6}, Ljava/lang/Character;->digit(II)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ltz v6, :cond_66

    .line 82
    .line 83
    if-eqz v4, :cond_60

    .line 84
    .line 85
    mul-int/lit8 v6, v6, 0x2

    .line 86
    .line 87
    const/16 v5, 0x9

    .line 88
    .line 89
    if-le v6, v5, :cond_60

    .line 90
    .line 91
    rem-int/lit8 v6, v6, 0xa

    .line 92
    .line 93
    add-int/2addr v6, v2

    .line 94
    goto :goto_60

    .line 95
    :catchall_5e
    move-exception p1

    .line 96
    goto :goto_84

    .line 97
    :cond_60
    :goto_60
    add-int/2addr v3, v6

    .line 98
    xor-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    add-int/lit8 v0, v0, -0x1

    .line 101
    .line 102
    goto :goto_3c

    .line 103
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v2, "Char "

    .line 108
    .line 109
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, " is not a decimal digit"

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_7f
    rem-int/2addr v3, v6
    :try_end_80
    .catchall {:try_start_8 .. :try_end_80} :catchall_5e

    .line 129
    if-nez v3, :cond_83

    .line 130
    .line 131
    return v2

    .line 132
    :cond_83
    :goto_83
    return v1

    .line 133
    :goto_84
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return v1
.end method
