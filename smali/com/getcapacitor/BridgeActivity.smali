###### Class com.getcapacitor.BridgeActivity (com.getcapacitor.BridgeActivity)
.class public Lcom/getcapacitor/BridgeActivity;
.super Lg/m;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field protected activityDepth:I

.field protected bridge:Lcom/getcapacitor/Bridge;

.field protected final bridgeBuilder:Lcom/getcapacitor/Bridge$Builder;

.field protected config:Lcom/getcapacitor/CapConfig;

.field protected initialPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;"
        }
    .end annotation
.end field

.field protected keepRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lg/m;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/getcapacitor/BridgeActivity;->keepRunning:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/getcapacitor/BridgeActivity;->activityDepth:I

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/getcapacitor/BridgeActivity;->initialPlugins:Ljava/util/List;

    .line 16
    .line 17
    new-instance v0, Lcom/getcapacitor/Bridge$Builder;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/getcapacitor/Bridge$Builder;-><init>(Lg/m;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridgeBuilder:Lcom/getcapacitor/Bridge$Builder;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getBridge()Lcom/getcapacitor/Bridge;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    return-object v0
.end method

.method public load()V
    .registers 3

    .line 1
    const-string v0, "Starting BridgeActivity"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridgeBuilder:Lcom/getcapacitor/Bridge$Builder;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/getcapacitor/BridgeActivity;->initialPlugins:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge$Builder;->addPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/getcapacitor/BridgeActivity;->config:Lcom/getcapacitor/CapConfig;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge$Builder;->setConfig(Lcom/getcapacitor/CapConfig;)Lcom/getcapacitor/Bridge$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge$Builder;->create()Lcom/getcapacitor/Bridge;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->shouldKeepRunning()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lcom/getcapacitor/BridgeActivity;->keepRunning:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/getcapacitor/BridgeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_e

    .line 6
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/Bridge;->onActivityResult(IILandroid/content/Intent;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/h0;->onActivityResult(IILandroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    :cond_e
    :goto_e
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lg/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/h0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridgeBuilder:Lcom/getcapacitor/Bridge$Builder;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge$Builder;->setInstanceState(Landroid/os/Bundle;)Lcom/getcapacitor/Bridge$Builder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget v0, Lcom/getcapacitor/android/R$style;->AppTheme_NoActionBar:I

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 16
    .line 17
    .line 18
    sget p1, Lcom/getcapacitor/android/R$style;->AppTheme_NoActionBar:I

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lg/m;->setTheme(I)V

    .line 21
    .line 22
    .line 23
    :try_start_16
    sget p1, Lcom/getcapacitor/android/R$layout;->capacitor_bridge_layout_main:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lg/m;->setContentView(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_38

    .line 26
    .line 27
    .line 28
    new-instance p1, Lcom/getcapacitor/PluginManager;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Lcom/getcapacitor/PluginManager;-><init>(Landroid/content/res/AssetManager;)V

    .line 35
    .line 36
    .line 37
    :try_start_24
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridgeBuilder:Lcom/getcapacitor/Bridge$Builder;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/getcapacitor/PluginManager;->loadPluginClasses()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge$Builder;->addPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;
    :try_end_2d
    .catch Lcom/getcapacitor/PluginLoadException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 44
    .line 45
    .line 46
    goto :goto_34

    .line 47
    :catch_2e
    move-exception p1

    .line 48
    const-string v0, "Error loading plugins."

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    :goto_34
    invoke-virtual {p0}, Lcom/getcapacitor/BridgeActivity;->load()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_38
    sget p1, Lcom/getcapacitor/android/R$layout;->no_webview:I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lg/m;->setContentView(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Lg/m;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onDestroy()V

    .line 9
    .line 10
    .line 11
    const-string v0, "App destroyed"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onDetachedFromWindow()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lb/p;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    if-eqz v0, :cond_a

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->onNewIntent(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    :cond_a
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/h0;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    if-eqz v0, :cond_f

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onPause()V

    .line 9
    .line 10
    .line 11
    const-string v0, "App paused"

    .line 12
    .line 13
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_f
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    goto :goto_e

    .line 6
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/Bridge;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/h0;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 13
    .line 14
    .line 15
    :cond_e
    :goto_e
    return-void
.end method

.method public onRestart()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onRestart()V

    .line 7
    .line 8
    .line 9
    const-string v0, "App restarted"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/h0;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    if-eqz v0, :cond_19

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getApp()Lcom/getcapacitor/App;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/getcapacitor/App;->fireStatusChange(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onResume()V

    .line 19
    .line 20
    .line 21
    const-string v0, "App resumed"

    .line 22
    .line 23
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_19
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lb/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->saveInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1
    invoke-super {p0}, Lg/m;->onStart()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/getcapacitor/BridgeActivity;->activityDepth:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/getcapacitor/BridgeActivity;->activityDepth:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 11
    .line 12
    if-eqz v0, :cond_15

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onStart()V

    .line 15
    .line 16
    .line 17
    const-string v0, "App started"

    .line 18
    .line 19
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1
    invoke-super {p0}, Lg/m;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 5
    .line 6
    if-eqz v0, :cond_27

    .line 7
    .line 8
    iget v0, p0, Lcom/getcapacitor/BridgeActivity;->activityDepth:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/getcapacitor/BridgeActivity;->activityDepth:I

    .line 18
    .line 19
    if-nez v0, :cond_1d

    .line 20
    .line 21
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getApp()Lcom/getcapacitor/App;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Lcom/getcapacitor/App;->fireStatusChange(Z)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridge:Lcom/getcapacitor/Bridge;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->onStop()V

    .line 33
    .line 34
    .line 35
    const-string v0, "App stopped"

    .line 36
    .line 37
    invoke-static {v0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_27
    return-void
.end method

.method public registerPlugin(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridgeBuilder:Lcom/getcapacitor/Bridge$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge$Builder;->addPlugin(Ljava/lang/Class;)Lcom/getcapacitor/Bridge$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerPlugins(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/getcapacitor/Plugin;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/BridgeActivity;->bridgeBuilder:Lcom/getcapacitor/Bridge$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge$Builder;->addPlugins(Ljava/util/List;)Lcom/getcapacitor/Bridge$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
