###### Class b2.c (b2.c)
.class public final Lb2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lb2/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lb2/c;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb2/c;->a:Lb2/c;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Lc2/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .registers 10

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lc2/a;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "unmodifiableList(parameters)"

    .line 13
    .line 14
    invoke-static {v1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_86

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lc2/b;

    .line 32
    .line 33
    iget-object v2, v1, Lc2/b;->b:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v3, v1, Lc2/b;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v4, v1, Lc2/b;->c:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-eqz v2, :cond_34

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-lez v2, :cond_34

    .line 46
    .line 47
    iget-object v1, v1, Lc2/b;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_14

    .line 53
    :cond_34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-lez v2, :cond_14

    .line 58
    .line 59
    iget-object v1, v1, Lc2/b;->d:Ljava/lang/String;

    .line 60
    .line 61
    const-string v2, "relative"

    .line 62
    .line 63
    invoke-static {v1, v2}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v2, -0x1

    .line 68
    const/4 v5, 0x0

    .line 69
    if-eqz v1, :cond_53

    .line 70
    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {p2, v4, v5, v2, v1}, Lk2/e;->g(Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_5f

    .line 84
    :cond_53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {p1, v4, v5, v2, v1}, Lk2/e;->g(Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    :goto_5f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    :cond_63
    :goto_63
    if-ge v5, v2, :cond_14

    .line 101
    .line 102
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    check-cast v4, Lb2/g;

    .line 109
    .line 110
    invoke-virtual {v4}, Lb2/g;->a()Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    if-nez v6, :cond_74

    .line 115
    .line 116
    goto :goto_63

    .line 117
    :cond_74
    invoke-virtual {v4}, Lb2/g;->a()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-static {v4}, Lc2/e;->i(Landroid/view/View;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-lez v6, :cond_63

    .line 130
    .line 131
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto :goto_14

    .line 135
    :cond_86
    return-object v0
.end method

.method public static final c(Lc2/a;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 1
    const-class v0, Lb2/c;

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
    return-void

    .line 10
    :cond_9
    :try_start_9
    iget-object v1, p0, Lc2/a;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0, p1, p2}, Lb2/c;->b(Lc2/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lb2/c;->a:Lb2/c;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lb2/c;->d(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance p2, La2/i;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-direct {p2, v1, v2, p0}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_22

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_22
    move-exception p0

    .line 36
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lb2/i;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-class v0, Lb2/i;

    .line 3
    .line 4
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2c

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_c

    .line 10
    .line 11
    :goto_a
    move-object v0, v2

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    :try_start_c
    sget-object v0, Lb2/i;->g:Lb2/i;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_f

    .line 14
    .line 15
    goto :goto_14

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    :try_start_10
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_a

    .line 21
    :goto_14
    if-nez v0, :cond_2e

    .line 22
    .line 23
    new-instance v0, Lb2/i;

    .line 24
    .line 25
    invoke-direct {v0}, Lb2/i;-><init>()V

    .line 26
    .line 27
    .line 28
    const-class v1, Lb2/i;

    .line 29
    .line 30
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_2c

    .line 34
    if-eqz v3, :cond_24

    .line 35
    .line 36
    goto :goto_2e

    .line 37
    :cond_24
    :try_start_24
    sput-object v0, Lb2/i;->g:Lb2/i;
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_27

    .line 38
    .line 39
    goto :goto_2e

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    :try_start_28
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    goto :goto_45

    .line 47
    :cond_2e
    :goto_2e
    const-class v0, Lb2/i;

    .line 48
    .line 49
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_2c

    .line 53
    if-eqz v1, :cond_37

    .line 54
    .line 55
    goto :goto_3e

    .line 56
    :cond_37
    :try_start_37
    sget-object v2, Lb2/i;->g:Lb2/i;
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3a

    .line 57
    .line 58
    goto :goto_3e

    .line 59
    :catchall_3a
    move-exception v1

    .line 60
    :try_start_3b
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_3e
    const-string v0, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessMatcher"

    .line 64
    .line 65
    invoke-static {v0, v2}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_2c

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-object v2

    .line 70
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_2c

    .line 71
    throw v0
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    const-string v0, "_valueToSum"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    goto :goto_5c

    .line 10
    :cond_9
    :try_start_9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_53

    .line 14
    if-eqz v1, :cond_55

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    :try_start_11
    const-string v4, "[-+]*\\d+([.,]\\d+)*([.,]\\d+)?"

    .line 19
    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_4f

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1
    :try_end_28
    .catch Ljava/text/ParseException; {:try_start_11 .. :try_end_28} :catch_4f
    .catchall {:try_start_11 .. :try_end_28} :catchall_53

    .line 41
    :try_start_28
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_37
    .catchall {:try_start_28 .. :try_end_36} :catchall_53

    .line 54
    .line 55
    goto :goto_38

    .line 56
    :catch_37
    const/4 v4, 0x0

    .line 57
    :goto_38
    if-nez v4, :cond_43

    .line 58
    .line 59
    :try_start_3a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v5, "getDefault()"

    .line 64
    .line 65
    invoke-static {v5, v4}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_43
    invoke-static {v4}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 77
    .line 78
    .line 79
    move-result-wide v2
    :try_end_4f
    .catch Ljava/text/ParseException; {:try_start_3a .. :try_end_4f} :catch_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_53

    .line 80
    :catch_4f
    :cond_4f
    :try_start_4f
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 81
    .line 82
    .line 83
    goto :goto_55

    .line 84
    :catchall_53
    move-exception p1

    .line 85
    goto :goto_5d

    .line 86
    :cond_55
    :goto_55
    const-string v0, "_is_fb_codeless"

    .line 87
    .line 88
    const-string v1, "1"

    .line 89
    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_53

    .line 91
    .line 92
    .line 93
    :goto_5c
    return-void

    .line 94
    :goto_5d
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
