###### Class org.apache.cordova.f (org.apache.cordova.f)
.class public Lorg/apache/cordova/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lorg/apache/cordova/q;

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/cordova/q;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/apache/cordova/q;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/cordova/f;->a:Lorg/apache/cordova/q;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v1, 0x14

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/apache/cordova/f;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/apache/cordova/f;->c:Z

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    iput-object v1, p0, Lorg/apache/cordova/f;->d:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, p0, Lorg/apache/cordova/f;->e:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v1, p0, Lorg/apache/cordova/f;->f:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean v0, p0, Lorg/apache/cordova/f;->g:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "feature"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_27

    .line 12
    .line 13
    new-instance p1, Lorg/apache/cordova/j0;

    .line 14
    .line 15
    iget-object v0, p0, Lorg/apache/cordova/f;->d:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/apache/cordova/f;->e:Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v2, p0, Lorg/apache/cordova/f;->g:Z

    .line 20
    .line 21
    invoke-direct {p1, v0, v1, v2}, Lorg/apache/cordova/j0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lorg/apache/cordova/f;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    iput-object p1, p0, Lorg/apache/cordova/f;->d:Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Lorg/apache/cordova/f;->e:Ljava/lang/String;

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lorg/apache/cordova/f;->c:Z

    .line 37
    .line 38
    iput-boolean p1, p0, Lorg/apache/cordova/f;->g:Z

    .line 39
    .line 40
    :cond_27
    return-void
.end method

.method public b(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "feature"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "name"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_19

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lorg/apache/cordova/f;->c:Z

    .line 18
    .line 19
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lorg/apache/cordova/f;->d:Ljava/lang/String;

    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    iget-boolean v1, p0, Lorg/apache/cordova/f;->c:Z

    .line 27
    .line 28
    const-string v4, "value"

    .line 29
    .line 30
    if-eqz v1, :cond_6f

    .line 31
    .line 32
    const-string v1, "param"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_6f

    .line 39
    .line 40
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lorg/apache/cordova/f;->f:Ljava/lang/String;

    .line 45
    .line 46
    const-string v1, "service"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3c

    .line 53
    .line 54
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lorg/apache/cordova/f;->d:Ljava/lang/String;

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3c
    iget-object v0, p0, Lorg/apache/cordova/f;->f:Ljava/lang/String;

    .line 62
    .line 63
    const-string v1, "package"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_68

    .line 70
    .line 71
    iget-object v0, p0, Lorg/apache/cordova/f;->f:Ljava/lang/String;

    .line 72
    .line 73
    const-string v1, "android-package"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_51

    .line 80
    .line 81
    goto :goto_68

    .line 82
    :cond_51
    iget-object v0, p0, Lorg/apache/cordova/f;->f:Ljava/lang/String;

    .line 83
    .line 84
    const-string v1, "onload"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_9e

    .line 91
    .line 92
    const-string v0, "true"

    .line 93
    .line 94
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput-boolean p1, p0, Lorg/apache/cordova/f;->g:Z

    .line 103
    .line 104
    return-void

    .line 105
    :cond_68
    :goto_68
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lorg/apache/cordova/f;->e:Ljava/lang/String;

    .line 110
    .line 111
    return-void

    .line 112
    :cond_6f
    const-string v1, "preference"

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_91

    .line 119
    .line 120
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v2, p0, Lorg/apache/cordova/f;->a:Lorg/apache/cordova/q;

    .line 135
    .line 136
    iget-object v2, v2, Lorg/apache/cordova/q;->a:Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_91
    const-string v1, "content"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_9e

    .line 153
    .line 154
    const-string v0, "src"

    .line 155
    .line 156
    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    :cond_9e
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "config"

    .line 18
    .line 19
    const-string v3, "xml"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_30

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_30

    .line 40
    .line 41
    const-string p1, "ConfigXmlParser"

    .line 42
    .line 43
    const-string v0, "res/xml/config.xml is missing!"

    .line 44
    .line 45
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_30
    new-instance v1, Lorg/apache/cordova/j0;

    .line 50
    .line 51
    const-string v2, "org.apache.cordova.AllowListPlugin"

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    const-string v4, "CordovaAllowListPlugin"

    .line 55
    .line 56
    invoke-direct {v1, v4, v2, v3}, Lorg/apache/cordova/j0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lorg/apache/cordova/f;->b:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/cordova/f;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final d(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    :goto_1
    const/4 v1, 0x1

    .line 3
    if-eq v0, v1, :cond_20

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_b

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/cordova/f;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 9
    .line 10
    .line 11
    goto :goto_11

    .line 12
    :cond_b
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_11

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lorg/apache/cordova/f;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    :goto_11
    :try_start_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_15} :catch_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_16

    .line 22
    goto :goto_1

    .line 23
    :catch_16
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catch_1b
    move-exception v1

    .line 29
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_20
    return-void
.end method
