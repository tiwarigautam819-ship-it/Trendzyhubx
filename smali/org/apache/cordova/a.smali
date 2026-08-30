###### Class org.apache.cordova.a (org.apache.cordova.a)
.class public final Lorg/apache/cordova/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/regex/Pattern;

.field public final b:Ljava/util/regex/Pattern;

.field public final c:Ljava/lang/Integer;

.field public final d:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    const-string v1, "([a-z0-9.-]*\\.)?"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x2

    .line 15
    if-eqz v2, :cond_13

    .line 16
    .line 17
    iput-object v4, p0, Lorg/apache/cordova/a;->a:Ljava/util/regex/Pattern;

    .line 18
    .line 19
    goto :goto_1d

    .line 20
    :cond_13
    invoke-static {p1, v3}, Lorg/apache/cordova/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lorg/apache/cordova/a;->a:Ljava/util/regex/Pattern;

    .line 29
    .line 30
    :goto_1d
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_26

    .line 35
    .line 36
    iput-object v4, p0, Lorg/apache/cordova/a;->b:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    goto :goto_53

    .line 39
    :cond_26
    const-string p1, "*."

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_49

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p2, v3}, Lorg/apache/cordova/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lorg/apache/cordova/a;->b:Ljava/util/regex/Pattern;

    .line 72
    .line 73
    goto :goto_53

    .line 74
    :cond_49
    invoke-static {p2, v3}, Lorg/apache/cordova/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lorg/apache/cordova/a;->b:Ljava/util/regex/Pattern;

    .line 83
    .line 84
    :goto_53
    if-eqz p3, :cond_69

    .line 85
    .line 86
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_5c

    .line 91
    .line 92
    goto :goto_69

    .line 93
    :cond_5c
    const/16 p1, 0xa

    .line 94
    .line 95
    invoke-static {p3, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lorg/apache/cordova/a;->c:Ljava/lang/Integer;

    .line 104
    .line 105
    goto :goto_6b

    .line 106
    :cond_69
    :goto_69
    iput-object v4, p0, Lorg/apache/cordova/a;->c:Ljava/lang/Integer;

    .line 107
    .line 108
    :goto_6b
    if-eqz p4, :cond_82

    .line 109
    .line 110
    const-string p1, "/*"

    .line 111
    .line 112
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_76

    .line 117
    .line 118
    goto :goto_82

    .line 119
    :cond_76
    const/4 p1, 0x1

    .line 120
    invoke-static {p4, p1}, Lorg/apache/cordova/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lorg/apache/cordova/a;->d:Ljava/util/regex/Pattern;

    .line 129
    .line 130
    return-void

    .line 131
    :cond_82
    :goto_82
    iput-object v4, p0, Lorg/apache/cordova/a;->d:Ljava/util/regex/Pattern;
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_84} :catch_85

    .line 132
    .line 133
    return-void

    .line 134
    :catch_85
    new-instance p1, Ljava/net/MalformedURLException;

    .line 135
    .line 136
    const-string p2, "Port must be a number"

    .line 137
    .line 138
    invoke-direct {p1, p2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw p1
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_30

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x2a

    .line 18
    .line 19
    if-ne v2, v3, :cond_1c

    .line 20
    .line 21
    if-eqz p1, :cond_1c

    .line 22
    .line 23
    const-string v3, "."

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    goto :goto_2a

    .line 29
    :cond_1c
    const-string v3, "\\.[]{}()^$?+|"

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, -0x1

    .line 36
    if-le v3, v4, :cond_2a

    .line 37
    .line 38
    const/16 v3, 0x5c

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_2a
    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_6

    .line 49
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
