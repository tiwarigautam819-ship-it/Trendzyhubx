###### Class com.getcapacitor.PluginManager (com.getcapacitor.PluginManager)
.class public Lcom/getcapacitor/PluginManager;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/getcapacitor/PluginManager;->assetManager:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    return-void
.end method

.method private parsePluginsJSON()Lorg/json/JSONArray;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/getcapacitor/PluginManager;->assetManager:Landroid/content/res/AssetManager;

    .line 6
    .line 7
    const-string v3, "capacitor.plugins.json"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_41
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_39

    .line 17
    .line 18
    .line 19
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_23

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_17

    .line 34
    :catchall_21
    move-exception v1

    .line 35
    goto :goto_30

    .line 36
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    new-instance v2, Lorg/json/JSONArray;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_21

    .line 43
    .line 44
    .line 45
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_41
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2f} :catch_39

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    .line 50
    .line 51
    .line 52
    goto :goto_38

    .line 53
    :catchall_34
    move-exception v0

    .line 54
    :try_start_35
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    :goto_38
    throw v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_41
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_39} :catch_39

    .line 58
    :catch_39
    new-instance v0, Lcom/getcapacitor/PluginLoadException;

    .line 59
    .line 60
    const-string v1, "Could not parse capacitor.plugins.json as JSON"

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lcom/getcapacitor/PluginLoadException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :catch_41
    new-instance v0, Lcom/getcapacitor/PluginLoadException;

    .line 67
    .line 68
    const-string v1, "Could not load capacitor.plugins.json"

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/getcapacitor/PluginLoadException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
.end method


# virtual methods
.method public loadPluginClasses()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/PluginManager;->parsePluginsJSON()Lorg/json/JSONArray;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_9
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_e
    if-ge v3, v2, :cond_2c

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "classpath"

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-class v5, Lcom/getcapacitor/Plugin;

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_27} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_27} :catch_2a

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_e

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    return-object v1

    .line 46
    :goto_2d
    new-instance v1, Lcom/getcapacitor/PluginLoadException;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "Could not find class by class path: "

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Lcom/getcapacitor/PluginLoadException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1

    .line 70
    :catch_45
    new-instance v0, Lcom/getcapacitor/PluginLoadException;

    .line 71
    .line 72
    const-string v1, "Could not parse capacitor.plugins.json as JSON"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Lcom/getcapacitor/PluginLoadException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method
