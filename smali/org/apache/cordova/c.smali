###### Class org.apache.cordova.c (org.apache.cordova.c)
.class public final Lorg/apache/cordova/c;
.super Lorg/apache/cordova/f;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic h:Lorg/apache/cordova/AllowListPlugin;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/AllowListPlugin;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lorg/apache/cordova/c;->h:Lorg/apache/cordova/AllowListPlugin;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/cordova/f;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 7
    .line 8
    const/16 v0, 0x14

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final b(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "content"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, p0, Lorg/apache/cordova/c;->h:Lorg/apache/cordova/AllowListPlugin;

    .line 13
    .line 14
    if-eqz v1, :cond_1b

    .line 15
    .line 16
    const-string v0, "src"

    .line 17
    .line 18
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, v3, Lorg/apache/cordova/AllowListPlugin;->b:Lorg/apache/cordova/b;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    const-string v1, "allow-navigation"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-string v4, "https://*/*"

    .line 35
    .line 36
    const-string v5, "http://*/*"

    .line 37
    .line 38
    const-string v6, "*"

    .line 39
    .line 40
    const-string v7, "href"

    .line 41
    .line 42
    if-eqz v1, :cond_4d

    .line 43
    .line 44
    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_47

    .line 53
    .line 54
    iget-object p1, v3, Lorg/apache/cordova/AllowListPlugin;->b:Lorg/apache/cordova/b;

    .line 55
    .line 56
    invoke-virtual {p1, v5}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v3, Lorg/apache/cordova/AllowListPlugin;->b:Lorg/apache/cordova/b;

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, v3, Lorg/apache/cordova/AllowListPlugin;->b:Lorg/apache/cordova/b;

    .line 65
    .line 66
    const-string v0, "data:*"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_47
    iget-object v0, v3, Lorg/apache/cordova/AllowListPlugin;->b:Lorg/apache/cordova/b;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_4d
    const-string v1, "allow-intent"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_5f

    .line 85
    .line 86
    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iget-object v0, v3, Lorg/apache/cordova/AllowListPlugin;->c:Lorg/apache/cordova/b;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_5f
    const-string v1, "access"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_93

    .line 103
    .line 104
    const-string v0, "origin"

    .line 105
    .line 106
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_93

    .line 111
    .line 112
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_80

    .line 117
    .line 118
    iget-object p1, v3, Lorg/apache/cordova/AllowListPlugin;->d:Lorg/apache/cordova/b;

    .line 119
    .line 120
    invoke-virtual {p1, v5}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, v3, Lorg/apache/cordova/AllowListPlugin;->d:Lorg/apache/cordova/b;

    .line 124
    .line 125
    invoke-virtual {p1, v4}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_80
    const-string v1, "subdomains"

    .line 130
    .line 131
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v1, v3, Lorg/apache/cordova/AllowListPlugin;->d:Lorg/apache/cordova/b;

    .line 136
    .line 137
    if-eqz p1, :cond_90

    .line 138
    .line 139
    const-string v2, "true"

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    :cond_90
    invoke-virtual {v1, v0}, Lorg/apache/cordova/b;->a(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_93
    return-void
.end method
