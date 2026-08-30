###### Class com.capacitorjs.plugins.share.SharePlugin (com.capacitorjs.plugins.share.SharePlugin)
.class public Lcom/capacitorjs/plugins/share/SharePlugin;
.super Lcom/getcapacitor/Plugin;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
    name = "Share"
.end annotation


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private chosenComponent:Landroid/content/ComponentName;

.field private isPresenting:Z

.field private stopped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->stopped:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->isPresenting:Z

    .line 8
    .line 9
    return-void
.end method

.method private activityResult(Lcom/getcapacitor/PluginCall;Ld/a;)V
    .registers 5
    .annotation runtime Lcom/getcapacitor/annotation/ActivityCallback;
    .end annotation

    .line 1
    iget p2, p2, Ld/a;->a:I

    .line 2
    .line 3
    if-nez p2, :cond_e

    .line 4
    .line 5
    iget-boolean p2, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->stopped:Z

    .line 6
    .line 7
    if-nez p2, :cond_e

    .line 8
    .line 9
    const-string p2, "Share canceled"

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_26

    .line 15
    :cond_e
    new-instance p2, Lcom/getcapacitor/JSObject;

    .line 16
    .line 17
    invoke-direct {p2}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->chosenComponent:Landroid/content/ComponentName;

    .line 21
    .line 22
    if-eqz v0, :cond_1c

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_1e

    .line 29
    :cond_1c
    const-string v0, ""

    .line 30
    .line 31
    :goto_1e
    const-string v1, "activityType"

    .line 32
    .line 33
    invoke-virtual {p2, v1, v0}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 37
    .line 38
    .line 39
    :goto_26
    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->isPresenting:Z

    .line 41
    .line 42
    return-void
.end method

.method public static bridge synthetic c(Lcom/capacitorjs/plugins/share/SharePlugin;Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->chosenComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-void
.end method

.method public static bridge synthetic d(Lcom/capacitorjs/plugins/share/SharePlugin;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3

    .line 1
    const-string v0, "android.intent.extra.CHOSEN_COMPONENT"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/capacitorjs/plugins/share/SharePlugin;->getParcelableExtraLegacy(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_f

    .line 6
    .line 7
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method private getParcelableExtraLegacy(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/content/ComponentName;

    .line 6
    .line 7
    return-object p1
.end method

.method private isFileUrl(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "file:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private isHttpUrl(Ljava/lang/String;)Z
    .registers 3

    .line 1
    const-string v0, "http"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private shareFiles(Lcom/getcapacitor/JSArray;Landroid/content/Intent;Lcom/getcapacitor/PluginCall;)V
    .registers 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_5
    invoke-virtual {p1}, Lcom/getcapacitor/JSArray;->toList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ge v2, v3, :cond_6c

    .line 18
    .line 19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {p0, v3}, Lcom/capacitorjs/plugins/share/SharePlugin;->isFileUrl(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eqz v5, :cond_66

    .line 30
    .line 31
    invoke-direct {p0, v3}, Lcom/capacitorjs/plugins/share/SharePlugin;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_2d

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-le v6, v4, :cond_2f

    .line 42
    .line 43
    goto :goto_2d

    .line 44
    :catch_2b
    move-exception p1

    .line 45
    goto :goto_a0

    .line 46
    :cond_2d
    :goto_2d
    const-string v5, "*/*"

    .line 47
    .line 48
    :cond_2f
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getActivity()Lg/m;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v6, ".fileprovider"

    .line 72
    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Ljava/io/File;

    .line 81
    .line 82
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v5, v6}, Landroidx/core/content/FileProvider;->d(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_b

    .line 103
    :cond_66
    const-string p1, "only file urls are supported"

    .line 104
    .line 105
    invoke-virtual {p3, p1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result p1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_70} :catch_2b

    .line 113
    const-string v2, "android.intent.extra.STREAM"

    .line 114
    .line 115
    if-le p1, v4, :cond_78

    .line 116
    .line 117
    :try_start_74
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    goto :goto_9c

    .line 121
    :cond_78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-ne p1, v4, :cond_9c

    .line 126
    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .line 129
    const/16 v3, 0x1d

    .line 130
    .line 131
    if-lt p1, v3, :cond_93

    .line 132
    .line 133
    const-string p1, ""

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroid/net/Uri;

    .line 140
    .line 141
    invoke-static {p1, v3}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 146
    .line 147
    .line 148
    :cond_93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Landroid/os/Parcelable;

    .line 153
    .line 154
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    :cond_9c
    :goto_9c
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_9f} :catch_2b

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_a0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p3, p1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method


# virtual methods
.method public canShare(Lcom/getcapacitor/PluginCall;)V
    .registers 5
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    new-instance v0, Lcom/getcapacitor/JSObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "value"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Z)Lcom/getcapacitor/JSObject;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public handleOnDestroy()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getActivity()Lg/m;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public handleOnStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->handleOnStop()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->stopped:Z

    .line 6
    .line 7
    return-void
.end method

.method public load()V
    .registers 5

    .line 1
    new-instance v0, Lq2/d;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p0}, Lq2/d;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    new-instance v2, Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string v3, "android.intent.extra.CHOSEN_COMPONENT"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lz/c;->c(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public share(Lcom/getcapacitor/PluginCall;)V
    .registers 12
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->isPresenting:Z

    .line 2
    .line 3
    if-nez v0, :cond_f9

    .line 4
    .line 5
    const-string v0, "title"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "text"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "url"

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "files"

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Lcom/getcapacitor/PluginCall;->getArray(Ljava/lang/String;)Lcom/getcapacitor/JSArray;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "dialogTitle"

    .line 32
    .line 33
    const-string v5, "Share"

    .line 34
    .line 35
    invoke-virtual {p1, v4, v5}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-nez v1, :cond_38

    .line 40
    .line 41
    if-nez v2, :cond_38

    .line 42
    .line 43
    if-eqz v3, :cond_32

    .line 44
    .line 45
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-nez v5, :cond_38

    .line 50
    .line 51
    :cond_32
    const-string v0, "Must provide a URL or Message or files"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_38
    if-eqz v2, :cond_4c

    .line 58
    .line 59
    invoke-direct {p0, v2}, Lcom/capacitorjs/plugins/share/SharePlugin;->isFileUrl(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_4c

    .line 64
    .line 65
    invoke-direct {p0, v2}, Lcom/capacitorjs/plugins/share/SharePlugin;->isHttpUrl(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_4c

    .line 70
    .line 71
    const-string v0, "Unsupported url"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4c
    new-instance v5, Landroid/content/Intent;

    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    if-eqz v3, :cond_5a

    .line 81
    .line 82
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-le v7, v6, :cond_5a

    .line 87
    .line 88
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    .line 89
    .line 90
    goto :goto_5c

    .line 91
    :cond_5a
    const-string v7, "android.intent.action.SEND"

    .line 92
    .line 93
    :goto_5c
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v7, "text/plain"

    .line 97
    .line 98
    const-string v8, "android.intent.extra.TEXT"

    .line 99
    .line 100
    if-eqz v1, :cond_87

    .line 101
    .line 102
    if-eqz v2, :cond_81

    .line 103
    .line 104
    invoke-direct {p0, v2}, Lcom/capacitorjs/plugins/share/SharePlugin;->isHttpUrl(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_81

    .line 109
    .line 110
    new-instance v9, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, " "

    .line 119
    .line 120
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    :cond_81
    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    .line 135
    .line 136
    :cond_87
    if-eqz v2, :cond_98

    .line 137
    .line 138
    invoke-direct {p0, v2}, Lcom/capacitorjs/plugins/share/SharePlugin;->isHttpUrl(Ljava/lang/String;)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_98

    .line 143
    .line 144
    if-nez v1, :cond_98

    .line 145
    .line 146
    invoke-virtual {v5, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    goto :goto_ab

    .line 153
    :cond_98
    if-eqz v2, :cond_ab

    .line 154
    .line 155
    invoke-direct {p0, v2}, Lcom/capacitorjs/plugins/share/SharePlugin;->isFileUrl(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_ab

    .line 160
    .line 161
    new-instance v1, Lcom/getcapacitor/JSArray;

    .line 162
    .line 163
    invoke-direct {v1}, Lcom/getcapacitor/JSArray;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, v1, v5, p1}, Lcom/capacitorjs/plugins/share/SharePlugin;->shareFiles(Lcom/getcapacitor/JSArray;Landroid/content/Intent;Lcom/getcapacitor/PluginCall;)V

    .line 170
    .line 171
    .line 172
    :cond_ab
    :goto_ab
    if-eqz v0, :cond_b2

    .line 173
    .line 174
    const-string v1, "android.intent.extra.SUBJECT"

    .line 175
    .line 176
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    :cond_b2
    if-eqz v3, :cond_bd

    .line 180
    .line 181
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_bd

    .line 186
    .line 187
    invoke-direct {p0, v3, v5, p1}, Lcom/capacitorjs/plugins/share/SharePlugin;->shareFiles(Lcom/getcapacitor/JSArray;Landroid/content/Intent;Lcom/getcapacitor/PluginCall;)V

    .line 188
    .line 189
    .line 190
    :cond_bd
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 191
    .line 192
    const/16 v1, 0x1f

    .line 193
    .line 194
    if-lt v0, v1, :cond_c6

    .line 195
    .line 196
    const/high16 v1, 0xa000000

    .line 197
    .line 198
    goto :goto_c8

    .line 199
    :cond_c6
    const/high16 v1, 0x8000000

    .line 200
    .line 201
    :goto_c8
    const/16 v2, 0x22

    .line 202
    .line 203
    if-lt v0, v2, :cond_cf

    .line 204
    .line 205
    const/high16 v0, 0x1000000

    .line 206
    .line 207
    or-int/2addr v1, v0

    .line 208
    :cond_cf
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    new-instance v2, Landroid/content/Intent;

    .line 213
    .line 214
    const-string v3, "android.intent.extra.CHOSEN_COMPONENT"

    .line 215
    .line 216
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const/4 v3, 0x0

    .line 220
    invoke-static {v0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-static {v5, v4, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const/4 v1, 0x0

    .line 233
    iput-object v1, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->chosenComponent:Landroid/content/ComponentName;

    .line 234
    .line 235
    const-string v1, "android.intent.category.DEFAULT"

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    iput-boolean v3, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->stopped:Z

    .line 241
    .line 242
    iput-boolean v6, p0, Lcom/capacitorjs/plugins/share/SharePlugin;->isPresenting:Z

    .line 243
    .line 244
    const-string v1, "activityResult"

    .line 245
    .line 246
    invoke-virtual {p0, p1, v0, v1}, Lcom/getcapacitor/Plugin;->startActivityForResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_f9
    const-string v0, "Can\'t share while sharing is in progress"

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return-void
.end method
