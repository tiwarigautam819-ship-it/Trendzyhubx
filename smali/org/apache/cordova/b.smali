###### Class org.apache.cordova.b (org.apache.cordova.b)
.class public final Lorg/apache/cordova/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

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
    iput-object v0, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    if-eqz v1, :cond_6f

    .line 6
    .line 7
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_10

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    const-string v1, "^((\\*|[A-Za-z-]+):(//)?)?(\\*|((\\*\\.)?[^*/:]+))?(:(\\d+))?(/.*)?"

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_6f

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x4

    .line 39
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "file"

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_3a

    .line 50
    .line 51
    const-string v3, "content"

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3d

    .line 58
    .line 59
    :cond_3a
    if-nez v2, :cond_3d

    .line 60
    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move-object v0, v2

    .line 63
    :goto_3e
    const/16 v2, 0x8

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/16 v3, 0x9

    .line 70
    .line 71
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez v1, :cond_65

    .line 76
    .line 77
    iget-object v1, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

    .line 78
    .line 79
    new-instance v3, Lorg/apache/cordova/a;

    .line 80
    .line 81
    const-string v4, "http"

    .line 82
    .line 83
    invoke-direct {v3, v4, v0, v2, p1}, Lorg/apache/cordova/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

    .line 90
    .line 91
    new-instance v3, Lorg/apache/cordova/a;

    .line 92
    .line 93
    const-string v4, "https"

    .line 94
    .line 95
    invoke-direct {v3, v4, v0, v2, p1}, Lorg/apache/cordova/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_65
    iget-object v3, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

    .line 103
    .line 104
    new-instance v4, Lorg/apache/cordova/a;

    .line 105
    .line 106
    invoke-direct {v4, v1, v0, v2, p1}, Lorg/apache/cordova/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6f} :catch_6f

    .line 110
    .line 111
    .line 112
    :catch_6f
    :cond_6f
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

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
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lorg/apache/cordova/b;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :cond_12
    :goto_12
    if-ge v4, v2, :cond_6f

    .line 20
    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    check-cast v5, Lorg/apache/cordova/a;

    .line 28
    .line 29
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    :try_start_1f
    iget-object v6, v5, Lorg/apache/cordova/a;->a:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    if-eqz v6, :cond_34

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_12

    .line 49
    .line 50
    goto :goto_34

    .line 51
    :catch_32
    move-exception v5

    .line 52
    goto :goto_6b

    .line 53
    :cond_34
    :goto_34
    iget-object v6, v5, Lorg/apache/cordova/a;->b:Ljava/util/regex/Pattern;

    .line 54
    .line 55
    if-eqz v6, :cond_46

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_12

    .line 70
    .line 71
    :cond_46
    iget-object v6, v5, Lorg/apache/cordova/a;->c:Ljava/lang/Integer;

    .line 72
    .line 73
    if-eqz v6, :cond_58

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_12

    .line 88
    .line 89
    :cond_58
    iget-object v5, v5, Lorg/apache/cordova/a;->d:Ljava/util/regex/Pattern;

    .line 90
    .line 91
    if-eqz v5, :cond_6a

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 102
    .line 103
    .line 104
    move-result v5
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_68} :catch_32

    .line 105
    if-eqz v5, :cond_12

    .line 106
    .line 107
    :cond_6a
    return v1

    .line 108
    :goto_6b
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    goto :goto_12

    .line 112
    :cond_6f
    return v3
.end method
