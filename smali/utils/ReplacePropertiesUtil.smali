###### Class utils.ReplacePropertiesUtil (utils.ReplacePropertiesUtil)
.class public Lutils/ReplacePropertiesUtil;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    const-string v0, "\u8bfb\u53d6 replace.properties \u5185\u5bb9\u5931\u8d25\uff1a"

    .line 2
    .line 3
    const-string v1, "replace.properties \u5185\u5bb9\u5982\u4e0b\uff1a\n"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/Properties;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lutils/ReplacePropertiesUtil;->properties:Ljava/util/Properties;

    .line 14
    .line 15
    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v2, "replace.properties"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_52

    .line 25
    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    new-array v3, v2, [B

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 40
    .line 41
    .line 42
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_36

    .line 52
    .line 53
    .line 54
    goto :goto_4c

    .line 55
    :catch_36
    move-exception v1

    .line 56
    :try_start_37
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :goto_4c
    iget-object v1, p0, Lutils/ReplacePropertiesUtil;->properties:Ljava/util/Properties;

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_51} :catch_52

    .line 80
    .line 81
    .line 82
    goto :goto_6b

    .line 83
    :catch_52
    move-exception p1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "ReplacePropertiesReader"

    .line 101
    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    :goto_6b
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lutils/ReplacePropertiesUtil;->properties:Ljava/util/Properties;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lutils/ReplacePropertiesUtil;->properties:Ljava/util/Properties;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public isDebugger()Z
    .registers 3

    .line 1
    const-string v0, "debugger"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "true"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public isValidBiometric()Z
    .registers 3

    .line 1
    const-string v0, "is_valid_pwd"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lutils/ReplacePropertiesUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "true"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
