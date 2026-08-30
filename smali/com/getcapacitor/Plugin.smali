###### Class com.getcapacitor.Plugin (com.getcapacitor.Plugin)
.class public Lcom/getcapacitor/Plugin;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final BUNDLE_PERSISTED_OPTIONS_JSON_KEY:Ljava/lang/String; = "_json"


# instance fields
.field private final activityLaunchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld/c;",
            ">;"
        }
    .end annotation
.end field

.field protected bridge:Lcom/getcapacitor/Bridge;

.field private final eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/getcapacitor/PluginCall;",
            ">;>;"
        }
    .end annotation
.end field

.field protected handle:Lcom/getcapacitor/PluginHandle;

.field private lastPluginCallId:Ljava/lang/String;

.field private final permissionLaunchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld/c;",
            ">;"
        }
    .end annotation
.end field

.field private final retainedEventArguments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/getcapacitor/JSObject;",
            ">;>;"
        }
    .end annotation
.end field

.field protected savedLastCall:Lcom/getcapacitor/PluginCall;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/getcapacitor/Plugin;->activityLaunchers:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/getcapacitor/Plugin;->permissionLaunchers:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/getcapacitor/Plugin;->retainedEventArguments:Ljava/util/Map;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lcom/getcapacitor/Plugin;Ljava/lang/reflect/Method;Ld/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/Plugin;->lambda$initializeActivityLaunchers$0(Ljava/lang/reflect/Method;Ld/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addEventListener(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_15

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_11

    .line 16
    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    :goto_15
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/getcapacitor/Plugin;->sendRetainedArgumentsForEvent(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static synthetic b(Lcom/getcapacitor/Plugin;Ljava/lang/reflect/Method;Ljava/util/Map;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/Plugin;->lambda$initializeActivityLaunchers$1(Ljava/lang/reflect/Method;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getActivityLauncherOrReject(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)Ld/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/PluginCall;",
            "Ljava/lang/String;",
            ")",
            "Ld/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->activityLaunchers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld/c;

    .line 8
    .line 9
    if-nez v0, :cond_27

    .line 10
    .line 11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "There is no ActivityCallback method registered for the name: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, ". Please define a callback method annotated with @ActivityCallback that receives arguments: (PluginCall, ActivityResult)"

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return-object p1

    .line 40
    :cond_27
    return-object v0
.end method

.method private getPermissionLauncherOrReject(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)Ld/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/getcapacitor/PluginCall;",
            "Ljava/lang/String;",
            ")",
            "Ld/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->permissionLaunchers:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld/c;

    .line 8
    .line 9
    if-nez v0, :cond_27

    .line 10
    .line 11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "There is no PermissionCallback method registered for the name: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, ". Please define a callback method annotated with @PermissionCallback that receives arguments: (PluginCall)"

    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return-object p1

    .line 40
    :cond_27
    return-object v0
.end method

.method private getPermissionStringsForAliases([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    array-length v2, v0

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_12
    if-ge v4, v2, :cond_32

    .line 20
    .line 21
    aget-object v5, v0, v4

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    invoke-interface {v5}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-eqz v6, :cond_2f

    .line 36
    .line 37
    invoke-interface {v5}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_12

    .line 51
    :cond_32
    new-array p1, v3, [Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, [Ljava/lang/String;

    .line 58
    .line 59
    return-object p1
.end method

.method private handleLegacyPermission(Lcom/getcapacitor/PluginCall;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getLegacyPluginAnnotation()Lcom/getcapacitor/NativePlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/getcapacitor/NativePlugin;->permissions()[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    if-lez v2, :cond_18

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/getcapacitor/Plugin;->saveCall(Lcom/getcapacitor/PluginCall;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/getcapacitor/NativePlugin;->permissionRequestCode()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, v1, p1}, Lcom/getcapacitor/Plugin;->pluginRequestPermissions([Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_18
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private synthetic lambda$initializeActivityLaunchers$0(Ljava/lang/reflect/Method;Ld/a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/Plugin;->triggerActivityCallback(Ljava/lang/reflect/Method;Ld/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$initializeActivityLaunchers$1(Ljava/lang/reflect/Method;Ljava/util/Map;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/Plugin;->triggerPermissionCallback(Ljava/lang/reflect/Method;Ljava/util/Map;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private permissionActivityResult(Lcom/getcapacitor/PluginCall;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/getcapacitor/Plugin;->getPermissionLauncherOrReject(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)Ld/c;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-nez p3, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->savePermissionCall(Lcom/getcapacitor/PluginCall;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p2}, Ld/c;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private removeEventListener(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    if-nez p1, :cond_b

    .line 10
    .line 11
    return-void

    .line 12
    :cond_b
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private sendRetainedArgumentsForEvent(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->retainedEventArguments:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    if-nez v0, :cond_b

    .line 10
    .line 11
    goto :goto_24

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->retainedEventArguments:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_24

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/getcapacitor/JSObject;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/getcapacitor/Plugin;->notifyListeners(Ljava/lang/String;Lcom/getcapacitor/JSObject;)V

    .line 34
    .line 35
    .line 36
    goto :goto_14

    .line 37
    :cond_24
    :goto_24
    return-void
.end method

.method private triggerActivityCallback(Ljava/lang/reflect/Method;Ld/a;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->lastPluginCallId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_10

    .line 10
    .line 11
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getPluginCallForLastActivity()Lcom/getcapacitor/PluginCall;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_10
    const/4 v1, 0x1

    .line 18
    :try_start_11
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v0, v2, v3

    .line 26
    .line 27
    aput-object p2, v2, v1

    .line 28
    .line 29
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_1f} :catch_22
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_1f} :catch_20

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :catch_20
    move-exception p1

    .line 34
    goto :goto_23

    .line 35
    :catch_22
    move-exception p1

    .line 36
    :goto_23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private triggerPermissionCallback(Ljava/lang/reflect/Method;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->getPermissionCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 14
    .line 15
    invoke-virtual {v1, p0, v0, p2}, Lcom/getcapacitor/Bridge;->validatePermissions(Lcom/getcapacitor/Plugin;Lcom/getcapacitor/PluginCall;Ljava/util/Map;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_27

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    :try_start_15
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 23
    .line 24
    .line 25
    new-array p2, p2, [Ljava/lang/Object;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    aput-object v0, p2, v1

    .line 29
    .line 30
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_20} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_20} :catch_21

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_21
    move-exception p1

    .line 35
    goto :goto_24

    .line 36
    :catch_23
    move-exception p1

    .line 37
    :goto_24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_27
    return-void
.end method


# virtual methods
.method public addListener(Lcom/getcapacitor/PluginCall;)V
    .registers 4
    .annotation runtime Lcom/getcapacitor/PluginMethod;
        returnType = "none"
    .end annotation

    .line 1
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->setKeepAlive(Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, p1}, Lcom/getcapacitor/Plugin;->addEventListener(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public checkPermissions(Lcom/getcapacitor/PluginCall;)V
    .registers 6
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .annotation runtime Lcom/getcapacitor/annotation/PermissionCallback;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getPermissionStates()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_e

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_e
    new-instance v1, Lcom/getcapacitor/JSObject;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_35

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v3, v2}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/getcapacitor/JSObject;

    .line 51
    .line 52
    .line 53
    goto :goto_1b

    .line 54
    :cond_35
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public freeSavedCall()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->savedLastCall:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/getcapacitor/PluginCall;->release(Lcom/getcapacitor/Bridge;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/getcapacitor/Plugin;->savedLastCall:Lcom/getcapacitor/PluginCall;

    .line 10
    .line 11
    return-void
.end method

.method public getActivity()Lg/m;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getActivity()Lg/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getBridge()Lcom/getcapacitor/Bridge;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfig()Lcom/getcapacitor/PluginConfig;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/getcapacitor/PluginHandle;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/getcapacitor/CapConfig;->getPluginConfiguration(Ljava/lang/String;)Lcom/getcapacitor/PluginConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getConfigValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getConfig()Lcom/getcapacitor/PluginConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/getcapacitor/PluginConfig;->getConfigJSON()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_d

    .line 13
    return-object p1

    .line 14
    :catch_d
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getLogTag([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/getcapacitor/Logger;->tags([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPermissionState(Ljava/lang/String;)Lcom/getcapacitor/PermissionState;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getPermissionStates()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/getcapacitor/PermissionState;

    .line 10
    .line 11
    return-object p1
.end method

.method public getPermissionStates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/getcapacitor/PermissionState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/getcapacitor/Bridge;->getPermissionStates(Lcom/getcapacitor/Plugin;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPluginHandle()Lcom/getcapacitor/PluginHandle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSavedCall()Lcom/getcapacitor/PluginCall;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->savedLastCall:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleOnActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
.end method

.method public handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    return-void
.end method

.method public handleOnDestroy()V
    .registers 1

    .line 1
    return-void
.end method

.method public handleOnNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 1
    return-void
.end method

.method public handleOnPause()V
    .registers 1

    .line 1
    return-void
.end method

.method public handleOnRestart()V
    .registers 1

    .line 1
    return-void
.end method

.method public handleOnResume()V
    .registers 1

    .line 1
    return-void
.end method

.method public handleOnStart()V
    .registers 1

    .line 1
    return-void
.end method

.method public handleOnStop()V
    .registers 1

    .line 1
    return-void
.end method

.method public handleRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/getcapacitor/Plugin;->hasDefinedPermissions([Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_3e

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string p3, "Missing the following permissions in AndroidManifest.xml:\n"

    .line 10
    .line 11
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-static {p3, p2}, Lcom/getcapacitor/util/PermissionHelper;->getUndefinedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    array-length p3, p2

    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_17
    if-ge v0, p3, :cond_32

    .line 25
    .line 26
    aget-object v1, p2, v0

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "\n"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_17

    .line 51
    :cond_32
    iget-object p2, p0, Lcom/getcapacitor/Plugin;->savedLastCall:Lcom/getcapacitor/PluginCall;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p2, p1}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/getcapacitor/Plugin;->savedLastCall:Lcom/getcapacitor/PluginCall;

    .line 62
    .line 63
    :cond_3e
    return-void
.end method

.method public hasDefinedPermissions([Ljava/lang/String;)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_15

    .line 5
    .line 6
    aget-object v3, p1, v2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {v4, v3}, Lcom/getcapacitor/util/PermissionHelper;->hasDefinedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_12

    .line 17
    .line 18
    return v1

    .line 19
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_15
    const/4 p1, 0x1

    .line 23
    return p1
.end method

.method public hasDefinedRequiredPermissions()Z
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_17

    .line 8
    .line 9
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getLegacyPluginAnnotation()Lcom/getcapacitor/NativePlugin;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/getcapacitor/NativePlugin;->permissions()[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/getcapacitor/Plugin;->hasDefinedPermissions([Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v1, v0

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    :goto_1e
    if-ge v3, v1, :cond_3d

    .line 32
    .line 33
    aget-object v4, v0, v3

    .line 34
    .line 35
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    array-length v5, v4

    .line 40
    move v6, v2

    .line 41
    :goto_28
    if-ge v6, v5, :cond_3a

    .line 42
    .line 43
    aget-object v7, v4, v6

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-static {v8, v7}, Lcom/getcapacitor/util/PermissionHelper;->hasDefinedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-nez v7, :cond_37

    .line 54
    .line 55
    return v2

    .line 56
    :cond_37
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_28

    .line 59
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    .line 60
    .line 61
    goto :goto_1e

    .line 62
    :cond_3d
    const/4 v0, 0x1

    .line 63
    return v0
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    return p1
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1}, Lz/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_c

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public hasRequiredPermissions()Z
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_29

    .line 10
    .line 11
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getLegacyPluginAnnotation()Lcom/getcapacitor/NativePlugin;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/getcapacitor/NativePlugin;->permissions()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    array-length v3, v0

    .line 22
    move v4, v2

    .line 23
    :goto_16
    if-ge v4, v3, :cond_28

    .line 24
    .line 25
    aget-object v5, v0, v4

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v6, v5}, Lz/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_25

    .line 36
    .line 37
    return v2

    .line 38
    :cond_25
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_16

    .line 41
    :cond_28
    return v1

    .line 42
    :cond_29
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    array-length v3, v0

    .line 47
    move v4, v2

    .line 48
    :goto_2f
    if-ge v4, v3, :cond_4e

    .line 49
    .line 50
    aget-object v5, v0, v4

    .line 51
    .line 52
    invoke-interface {v5}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    array-length v6, v5

    .line 57
    move v7, v2

    .line 58
    :goto_39
    if-ge v7, v6, :cond_4b

    .line 59
    .line 60
    aget-object v8, v5, v7

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v9, v8}, Lz/c;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eqz v8, :cond_48

    .line 71
    .line 72
    return v2

    .line 73
    :cond_48
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_39

    .line 76
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_2f

    .line 79
    :cond_4e
    return v1
.end method

.method public initializeActivityLaunchers()V
    .registers 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-class v3, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_29

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_9

    .line 42
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x0

    .line 47
    :cond_2e
    :goto_2e
    if-ge v2, v1, :cond_80

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    check-cast v3, Ljava/lang/reflect/Method;

    .line 56
    .line 57
    const-class v4, Lcom/getcapacitor/annotation/ActivityCallback;

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_5c

    .line 64
    .line 65
    iget-object v4, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 66
    .line 67
    new-instance v5, Landroidx/fragment/app/t0;

    .line 68
    .line 69
    const/4 v6, 0x2

    .line 70
    invoke-direct {v5, v6}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v6, Lcom/getcapacitor/q;

    .line 74
    .line 75
    const/4 v7, 0x0

    .line 76
    invoke-direct {v6, p0, v7, v3}, Lcom/getcapacitor/q;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v5, v6}, Lcom/getcapacitor/Bridge;->registerForActivityResult(Le/a;Ld/b;)Ld/c;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    iget-object v5, p0, Lcom/getcapacitor/Plugin;->activityLaunchers:Ljava/util/Map;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    goto :goto_2e

    .line 93
    :cond_5c
    const-class v4, Lcom/getcapacitor/annotation/PermissionCallback;

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_2e

    .line 100
    .line 101
    iget-object v4, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 102
    .line 103
    new-instance v5, Landroidx/fragment/app/t0;

    .line 104
    .line 105
    const/4 v6, 0x1

    .line 106
    invoke-direct {v5, v6}, Landroidx/fragment/app/t0;-><init>(I)V

    .line 107
    .line 108
    .line 109
    new-instance v6, Lcom/getcapacitor/q;

    .line 110
    .line 111
    const/4 v7, 0x1

    .line 112
    invoke-direct {v6, p0, v7, v3}, Lcom/getcapacitor/q;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v5, v6}, Lcom/getcapacitor/Bridge;->registerForActivityResult(Le/a;Ld/b;)Ld/c;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v5, p0, Lcom/getcapacitor/Plugin;->permissionLaunchers:Ljava/util/Map;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    goto :goto_2e

    .line 129
    :cond_80
    return-void
.end method

.method public isPermissionDeclared(Ljava/lang/String;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3f

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v2, v0

    .line 15
    move v3, v1

    .line 16
    :goto_f
    if-ge v3, v2, :cond_3f

    .line 17
    .line 18
    aget-object v4, v0, v3

    .line 19
    .line 20
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_3c

    .line 29
    .line 30
    invoke-interface {v4}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    array-length v0, p1

    .line 35
    const/4 v2, 0x1

    .line 36
    move v3, v1

    .line 37
    move v4, v2

    .line 38
    :goto_25
    if-ge v3, v0, :cond_3b

    .line 39
    .line 40
    aget-object v5, p1, v3

    .line 41
    .line 42
    if-eqz v4, :cond_37

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v4, v5}, Lcom/getcapacitor/util/PermissionHelper;->hasDefinedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_37

    .line 53
    .line 54
    move v4, v2

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v4, v1

    .line 57
    :goto_38
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_25

    .line 60
    :cond_3b
    return v4

    .line 61
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    .line 62
    .line 63
    goto :goto_f

    .line 64
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "isPermissionDeclared: No alias defined for "

    .line 67
    .line 68
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, " or missing @CapacitorPlugin annotation."

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v1
.end method

.method public load()V
    .registers 1

    .line 1
    return-void
.end method

.method public notifyListeners(Ljava/lang/String;Lcom/getcapacitor/JSObject;)V
    .registers 4

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, p2, v0}, Lcom/getcapacitor/Plugin;->notifyListeners(Ljava/lang/String;Lcom/getcapacitor/JSObject;Z)V

    return-void
.end method

.method public notifyListeners(Ljava/lang/String;Lcom/getcapacitor/JSObject;Z)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying listeners for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3f

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_3f

    .line 4
    :cond_26
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/getcapacitor/PluginCall;

    .line 6
    invoke-virtual {p3, p2}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    goto :goto_2f

    .line 7
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No listeners found for event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6d

    .line 8
    iget-object p3, p0, Lcom/getcapacitor/Plugin;->retainedEventArguments:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_65

    .line 9
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_65
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, p0, Lcom/getcapacitor/Plugin;->retainedEventArguments:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    return-void
.end method

.method public pluginRequestAllPermissions()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getLegacyPluginAnnotation()Lcom/getcapacitor/NativePlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getActivity()Lg/m;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0}, Lcom/getcapacitor/NativePlugin;->permissions()[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0}, Lcom/getcapacitor/NativePlugin;->permissionRequestCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v1, v2, v0}, Ly/b;->d(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public pluginRequestPermission(Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getActivity()Lg/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    filled-new-array {p1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, p1, p2}, Ly/b;->d(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public pluginRequestPermissions([Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/getcapacitor/Plugin;->getActivity()Lg/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p1, p2}, Ly/b;->d(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public removeAllListeners()V
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeAllListeners(Lcom/getcapacitor/PluginCall;)V
    .registers 3
    .annotation runtime Lcom/getcapacitor/PluginMethod;
        returnType = "promise"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->eventListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    return-void
.end method

.method public removeListener(Lcom/getcapacitor/PluginCall;)V
    .registers 4
    .annotation runtime Lcom/getcapacitor/PluginMethod;
        returnType = "none"
    .end annotation

    .line 1
    const-string v0, "eventName"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "callbackId"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1c

    .line 20
    .line 21
    invoke-direct {p0, v0, p1}, Lcom/getcapacitor/Plugin;->removeEventListener(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->releaseCall(Lcom/getcapacitor/PluginCall;)V

    .line 27
    .line 28
    .line 29
    :cond_1c
    return-void
.end method

.method public requestAllPermissions(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_31

    .line 8
    .line 9
    new-instance v1, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    array-length v2, v0

    .line 19
    const/4 v3, 0x0

    .line 20
    move v4, v3

    .line 21
    :goto_14
    if-ge v4, v2, :cond_26

    .line 22
    .line 23
    aget-object v5, v0, v4

    .line 24
    .line 25
    invoke-interface {v5}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_14

    .line 39
    :cond_26
    new-array v0, v3, [Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, [Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {p0, p1, v0, p2}, Lcom/getcapacitor/Plugin;->permissionActivityResult(Lcom/getcapacitor/PluginCall;[Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_31
    return-void
.end method

.method public requestPermissionForAlias(Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 4

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/getcapacitor/Plugin;->requestPermissionForAliases([Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public requestPermissionForAliases([Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V
    .registers 5

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_9

    .line 3
    .line 4
    const-string p1, "No permission alias was provided"

    .line 5
    .line 6
    invoke-static {p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    invoke-direct {p0, p1}, Lcom/getcapacitor/Plugin;->getPermissionStringsForAliases([Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v0, p1

    .line 15
    if-lez v0, :cond_13

    .line 16
    .line 17
    invoke-direct {p0, p2, p1, p3}, Lcom/getcapacitor/Plugin;->permissionActivityResult(Lcom/getcapacitor/PluginCall;[Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_13
    return-void
.end method

.method public requestPermissions(Lcom/getcapacitor/PluginCall;)V
    .registers 12
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/getcapacitor/PluginHandle;->getPluginAnnotation()Lcom/getcapacitor/annotation/CapacitorPlugin;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_c

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/getcapacitor/Plugin;->handleLegacyPermission(Lcom/getcapacitor/PluginCall;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "permissions"

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/getcapacitor/PluginCall;->getArray(Ljava/lang/String;)Lcom/getcapacitor/JSArray;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1f

    .line 26
    .line 27
    :try_start_1a
    invoke-virtual {v2}, Lcom/getcapacitor/JSArray;->toList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1e} :catch_1f

    .line 31
    goto :goto_20

    .line 32
    :catch_1f
    :cond_1f
    move-object v2, v3

    .line 33
    :goto_20
    new-instance v4, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v2, :cond_63

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2f

    .line 46
    .line 47
    goto :goto_63

    .line 48
    :cond_2f
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    array-length v6, v0

    .line 53
    move v7, v5

    .line 54
    :goto_35
    if-ge v7, v6, :cond_4d

    .line 55
    .line 56
    aget-object v8, v0, v7

    .line 57
    .line 58
    invoke-interface {v8}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_4a

    .line 67
    .line 68
    invoke-interface {v8}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_4a
    add-int/lit8 v7, v7, 0x1

    .line 76
    .line 77
    goto :goto_35

    .line 78
    :cond_4d
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_59

    .line 83
    .line 84
    const-string v0, "No valid permission alias was requested of this plugin."

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->reject(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_ae

    .line 90
    :cond_59
    new-array v0, v5, [Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v3, v0

    .line 97
    check-cast v3, [Ljava/lang/String;

    .line 98
    .line 99
    goto :goto_ae

    .line 100
    :cond_63
    :goto_63
    invoke-interface {v0}, Lcom/getcapacitor/annotation/CapacitorPlugin;->permissions()[Lcom/getcapacitor/annotation/Permission;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    array-length v2, v0

    .line 105
    move v3, v5

    .line 106
    :goto_69
    if-ge v3, v2, :cond_a5

    .line 107
    .line 108
    aget-object v6, v0, v3

    .line 109
    .line 110
    invoke-interface {v6}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    array-length v7, v7

    .line 115
    if-eqz v7, :cond_91

    .line 116
    .line 117
    invoke-interface {v6}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    array-length v7, v7

    .line 122
    const/4 v8, 0x1

    .line 123
    if-ne v7, v8, :cond_89

    .line 124
    .line 125
    invoke-interface {v6}, Lcom/getcapacitor/annotation/Permission;->strings()[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    aget-object v7, v7, v5

    .line 130
    .line 131
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_89

    .line 136
    .line 137
    goto :goto_91

    .line 138
    :cond_89
    invoke-interface {v6}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    goto :goto_a2

    .line 146
    :cond_91
    :goto_91
    invoke-interface {v6}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_a2

    .line 155
    .line 156
    invoke-interface {v6}, Lcom/getcapacitor/annotation/Permission;->alias()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :cond_a2
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    .line 164
    .line 165
    goto :goto_69

    .line 166
    :cond_a5
    new-array v0, v5, [Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    move-object v3, v0

    .line 173
    check-cast v3, [Ljava/lang/String;

    .line 174
    .line 175
    :goto_ae
    if-eqz v3, :cond_b9

    .line 176
    .line 177
    array-length v0, v3

    .line 178
    if-lez v0, :cond_b9

    .line 179
    .line 180
    const-string v0, "checkPermissions"

    .line 181
    .line 182
    invoke-virtual {p0, v3, p1, v0}, Lcom/getcapacitor/Plugin;->requestPermissionForAliases([Ljava/lang/String;Lcom/getcapacitor/PluginCall;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    goto :goto_e5

    .line 186
    :cond_b9
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-nez v0, :cond_e2

    .line 191
    .line 192
    new-instance v0, Lcom/getcapacitor/JSObject;

    .line 193
    .line 194
    invoke-direct {v0}, Lcom/getcapacitor/JSObject;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    :goto_c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_de

    .line 206
    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ljava/lang/String;

    .line 212
    .line 213
    sget-object v3, Lcom/getcapacitor/PermissionState;->GRANTED:Lcom/getcapacitor/PermissionState;

    .line 214
    .line 215
    invoke-virtual {v3}, Lcom/getcapacitor/PermissionState;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v0, v2, v3}, Lcom/getcapacitor/JSObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/getcapacitor/JSObject;

    .line 220
    .line 221
    .line 222
    goto :goto_c8

    .line 223
    :cond_de
    invoke-virtual {p1, v0}, Lcom/getcapacitor/PluginCall;->resolve(Lcom/getcapacitor/JSObject;)V

    .line 224
    .line 225
    .line 226
    goto :goto_e5

    .line 227
    :cond_e2
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 228
    .line 229
    .line 230
    :goto_e5
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    return-void
.end method

.method public saveCall(Lcom/getcapacitor/PluginCall;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Plugin;->savedLastCall:Lcom/getcapacitor/PluginCall;

    .line 2
    .line 3
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/getcapacitor/Plugin;->lastPluginCallId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->getSavedCall(Ljava/lang/String;)Lcom/getcapacitor/PluginCall;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_c
    new-instance v1, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/getcapacitor/PluginCall;->getData()Lcom/getcapacitor/JSObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_20

    .line 23
    .line 24
    const-string v2, "_json"

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_20
    return-object v1
.end method

.method public setBridge(Lcom/getcapacitor/Bridge;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    return-void
.end method

.method public setPluginHandle(Lcom/getcapacitor/PluginHandle;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/Plugin;->handle:Lcom/getcapacitor/PluginHandle;

    .line 2
    .line 3
    return-void
.end method

.method public shouldOverrideLoad(Landroid/net/Uri;)Ljava/lang/Boolean;
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public startActivityForResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/getcapacitor/Bridge;->startActivityForPluginWithResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Lcom/getcapacitor/PluginCall;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/getcapacitor/Plugin;->getActivityLauncherOrReject(Lcom/getcapacitor/PluginCall;Ljava/lang/String;)Ld/c;

    move-result-object p3

    if-nez p3, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->setPluginCallForLastActivity(Lcom/getcapacitor/PluginCall;)V

    .line 3
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/getcapacitor/Plugin;->lastPluginCallId:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/getcapacitor/Plugin;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0, p1}, Lcom/getcapacitor/Bridge;->saveCall(Lcom/getcapacitor/PluginCall;)V

    .line 5
    invoke-virtual {p3, p2}, Ld/c;->a(Ljava/lang/Object;)V

    return-void
.end method
