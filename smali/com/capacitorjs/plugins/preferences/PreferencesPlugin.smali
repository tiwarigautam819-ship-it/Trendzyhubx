###### Class com.capacitorjs.plugins.preferences.PreferencesPlugin (com.capacitorjs.plugins.preferences.PreferencesPlugin)
.class public Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;
.super Lcom/getcapacitor/Plugin;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "Preferences"
.end annotation


# instance fields
.field private preferences:Lp1/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public clear(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 2
    .line 3
    iget-object v0, v0, Lp1/a;->a:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public configure(Lcom/getcapacitor/PluginCall;)V
    .registers 5
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lp1/b;->b:Lp1/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lp1/b;->a()Lp1/b;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "group"

    .line 8
    .line 9
    iget-object v0, v0, Lp1/b;->a:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v2, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, v1, Lp1/b;->a:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lp1/a;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v2, v1}, Lp1/a;-><init>(Landroid/content/Context;Lp1/b;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;
    :try_end_1b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :catch_1f
    move-exception v0

    .line 33
    const-string v1, "Error while configuring"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public get(Lcom/getcapacitor/PluginCall;)V
    .registers 5
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    const-string v0, "Must provide key"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 16
    .line 17
    iget-object v1, v1, Lp1/a;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/getcapacitor/JSObject;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 27
    .line 28
    .line 29
    if-nez v0, :cond_20

    .line 30
    .line 31
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 32
    .line 33
    :cond_20
    const-string v2, "value"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public keys(Lcom/getcapacitor/PluginCall;)V
    .registers 6
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 2
    .line 3
    iget-object v0, v0, Lp1/a;->a:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, [Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Lcom/getcapacitor/JSObject;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 25
    .line 26
    .line 27
    :try_start_1a
    const-string v2, "keys"

    .line 28
    .line 29
    new-instance v3, Lcom/getcapacitor/JSArray;

    .line 30
    .line 31
    invoke-direct {v3, v0}, Lcom/getcapacitor/JSArray;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_24} :catch_28

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_28
    move-exception v0

    .line 42
    const-string v1, "Unable to serialize response."

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public load()V
    .registers 4

    .line 1
    new-instance v0, Lp1/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lp1/b;->b:Lp1/b;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lp1/a;-><init>(Landroid/content/Context;Lp1/b;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 13
    .line 14
    return-void
.end method

.method public migrate(Lcom/getcapacitor/PluginCall;)V
    .registers 10
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lp1/b;->b:Lp1/b;

    .line 16
    .line 17
    iget-object v3, v3, Lp1/b;->a:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_54

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/lang/String;

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v7, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 54
    .line 55
    iget-object v7, v7, Lp1/a;->a:Landroid/content/SharedPreferences;

    .line 56
    .line 57
    invoke-interface {v7, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-nez v5, :cond_50

    .line 62
    .line 63
    iget-object v5, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 64
    .line 65
    iget-object v5, v5, Lp1/a;->a:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    .line 73
    .line 74
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_23

    .line 81
    :cond_50
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_23

    .line 85
    :cond_54
    new-instance v2, Lcom/getcapacitor/JSObject;

    .line 86
    .line 87
    invoke-direct {v2}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v3, Lcom/getcapacitor/JSArray;

    .line 91
    .line 92
    invoke-direct {v3, v0}, Lcom/getcapacitor/JSArray;-><init>(Ljava/util/Collection;)V

    .line 93
    .line 94
    .line 95
    const-string v0, "migrated"

    .line 96
    .line 97
    invoke-virtual {v2, v0, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 98
    .line 99
    .line 100
    new-instance v0, Lcom/getcapacitor/JSArray;

    .line 101
    .line 102
    invoke-direct {v0, v1}, Lcom/getcapacitor/JSArray;-><init>(Ljava/util/Collection;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "existing"

    .line 106
    .line 107
    invoke-virtual {v2, v1, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v2}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public remove(Lcom/getcapacitor/PluginCall;)V
    .registers 4
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    const-string v0, "Must provide key"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 16
    .line 17
    iget-object v1, v1, Lp1/a;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public removeOld(Lcom/getcapacitor/PluginCall;)V
    .registers 2
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public set(Lcom/getcapacitor/PluginCall;)V
    .registers 5
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    const-string v0, "Must provide key"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    const-string v1, "value"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/capacitorjs/plugins/preferences/PreferencesPlugin;->preferences:Lp1/a;

    .line 22
    .line 23
    iget-object v2, v2, Lp1/a;->a:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
