###### Class q2.w (q2.w)
.class public final Lq2/w;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lq2/w;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final e:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 20

    .line 1
    new-instance v0, Lq2/w;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq2/w;->a:Lq2/w;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "app_events_config.os_version("

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x29

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v19

    .line 29
    const-string v2, "supports_implicit_sdk_logging"

    .line 30
    .line 31
    const-string v3, "gdpv4_nux_content"

    .line 32
    .line 33
    const-string v4, "gdpv4_nux_enabled"

    .line 34
    .line 35
    const-string v5, "android_dialog_configs"

    .line 36
    .line 37
    const-string v6, "android_sdk_error_categories"

    .line 38
    .line 39
    const-string v7, "app_events_session_timeout"

    .line 40
    .line 41
    const-string v8, "app_events_feature_bitmask"

    .line 42
    .line 43
    const-string v9, "auto_event_mapping_android"

    .line 44
    .line 45
    const-string v10, "seamless_login"

    .line 46
    .line 47
    const-string v11, "smart_login_bookmark_icon_url"

    .line 48
    .line 49
    const-string v12, "smart_login_menu_icon_url"

    .line 50
    .line 51
    const-string v13, "restrictive_data_filter_params"

    .line 52
    .line 53
    const-string v14, "aam_rules"

    .line 54
    .line 55
    const-string v15, "suggested_events_setting"

    .line 56
    .line 57
    const-string v16, "protected_mode_rules"

    .line 58
    .line 59
    const-string v17, "auto_log_app_events_default"

    .line 60
    .line 61
    const-string v18, "auto_log_app_events_enabled"

    .line 62
    .line 63
    filled-new-array/range {v2 .. v19}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Ls6/h;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lq2/w;->b:Ljava/util/List;

    .line 72
    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lq2/w;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    .line 82
    sget-object v1, Lq2/v;->a:Lq2/v;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sput-object v0, Lq2/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 88
    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v0, Lq2/w;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 95
    .line 96
    return-void
.end method

.method public static a()Lorg/json/JSONObject;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

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
    sget-object v2, Lq2/w;->b:Ljava/util/List;

    .line 12
    .line 13
    check-cast v2, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    const-string v2, ","

    .line 19
    .line 20
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "fields"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lx1/z;->j:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const-string v2, "app"

    .line 33
    .line 34
    invoke-static {v1, v2, v1}, Lx1/w;->u(Lx1/a;Ljava/lang/String;Lx1/v;)Lx1/z;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x1

    .line 39
    iput-boolean v2, v1, Lx1/z;->i:Z

    .line 40
    .line 41
    iput-object v0, v1, Lx1/z;->d:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {v1}, Lx1/z;->c()Lx1/c0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 48
    .line 49
    if-nez v0, :cond_37

    .line 50
    .line 51
    new-instance v0, Lorg/json/JSONObject;

    .line 52
    .line 53
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 54
    .line 55
    .line 56
    :cond_37
    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lq2/t;
    .registers 2

    .line 1
    sget-object v0, Lq2/w;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lq2/t;

    .line 8
    .line 9
    return-object p0
.end method

.method public static final c()Ljava/util/HashMap;
    .registers 5

    .line 1
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v1, v3, v4

    .line 14
    .line 15
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "com.facebook.internal.APP_SETTINGS.%s"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "com.facebook.internal.preferences.APP_SETTINGS"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_43

    .line 41
    .line 42
    if-eqz v0, :cond_3b

    .line 43
    .line 44
    :try_start_2b
    new-instance v1, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_30} :catch_31

    .line 47
    .line 48
    .line 49
    goto :goto_34

    .line 50
    :catch_31
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    :goto_34
    if-eqz v1, :cond_43

    .line 54
    .line 55
    invoke-static {v1}, Lq2/w;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string v1, "Required value was null."

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_43
    return-object v2
.end method

.method public static final d()V
    .registers 8

    .line 1
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sget-object v3, Lq2/v;->d:Lq2/v;

    .line 14
    .line 15
    sget-object v4, Lq2/w;->a:Lq2/w;

    .line 16
    .line 17
    sget-object v5, Lq2/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    if-eqz v2, :cond_1b

    .line 20
    .line 21
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Lq2/w;->j()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1b
    sget-object v2, Lq2/w;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2c

    .line 35
    .line 36
    sget-object v0, Lq2/v;->c:Lq2/v;

    .line 37
    .line 38
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lq2/w;->j()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2c
    sget-object v2, Lq2/v;->a:Lq2/v;

    .line 46
    .line 47
    sget-object v6, Lq2/v;->b:Lq2/v;

    .line 48
    .line 49
    invoke-virtual {v5, v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_37

    .line 54
    .line 55
    goto :goto_43

    .line 56
    :cond_37
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-eq v7, v2, :cond_2c

    .line 61
    .line 62
    :cond_3d
    invoke-virtual {v5, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_60

    .line 67
    .line 68
    :goto_43
    const/4 v2, 0x1

    .line 69
    new-array v3, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    aput-object v1, v3, v4

    .line 73
    .line 74
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "com.facebook.internal.APP_SETTINGS.%s"

    .line 79
    .line 80
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {}, Lx1/r;->c()Ljava/util/concurrent/Executor;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    new-instance v4, Lq2/r;

    .line 89
    .line 90
    invoke-direct {v4, v0, v2, v1}, Lq2/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_60
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-eq v2, v3, :cond_3d

    .line 102
    .line 103
    invoke-virtual {v4}, Lq2/w;->j()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static e(Ljava/lang/String;Lorg/json/JSONObject;)Lq2/t;
    .registers 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "applicationId"

    .line 6
    .line 7
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "android_sdk_error_categories"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "name"

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v2, :cond_16

    .line 20
    .line 21
    move-object v8, v5

    .line 22
    goto :goto_73

    .line 23
    :cond_16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    move-object v9, v5

    .line 28
    move-object v10, v9

    .line 29
    move-object v11, v10

    .line 30
    move-object v12, v11

    .line 31
    move-object v13, v12

    .line 32
    move-object v14, v13

    .line 33
    const/4 v7, 0x0

    .line 34
    :goto_21
    if-ge v7, v6, :cond_6e

    .line 35
    .line 36
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    if-nez v8, :cond_2c

    .line 41
    .line 42
    :goto_29
    move-object/from16 v16, v2

    .line 43
    .line 44
    goto :goto_69

    .line 45
    :cond_2c
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v15

    .line 49
    if-nez v15, :cond_33

    .line 50
    .line 51
    goto :goto_29

    .line 52
    :cond_33
    const-string v4, "other"

    .line 53
    .line 54
    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    move-object/from16 v16, v2

    .line 59
    .line 60
    const-string v2, "recovery_message"

    .line 61
    .line 62
    if-eqz v4, :cond_48

    .line 63
    .line 64
    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-static {v8}, Lo3/a;->l(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    goto :goto_69

    .line 73
    :cond_48
    const-string v4, "transient"

    .line 74
    .line 75
    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_59

    .line 80
    .line 81
    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    invoke-static {v8}, Lo3/a;->l(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    goto :goto_69

    .line 90
    :cond_59
    const-string v4, "login_recoverable"

    .line 91
    .line 92
    invoke-virtual {v15, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_69

    .line 97
    .line 98
    invoke-virtual {v8, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    invoke-static {v8}, Lo3/a;->l(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    :cond_69
    :goto_69
    add-int/lit8 v7, v7, 0x1

    .line 107
    .line 108
    move-object/from16 v2, v16

    .line 109
    .line 110
    goto :goto_21

    .line 111
    :cond_6e
    new-instance v8, Lq2/k;

    .line 112
    .line 113
    invoke-direct/range {v8 .. v14}, Lq2/k;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_73
    if-nez v8, :cond_7b

    .line 117
    .line 118
    sget-object v2, Lq2/k;->d:Lo3/a;

    .line 119
    .line 120
    invoke-virtual {v2}, Lo3/a;->a()Lq2/k;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    :cond_7b
    move-object/from16 v23, v8

    .line 125
    .line 126
    const-string v2, "app_events_feature_bitmask"

    .line 127
    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    and-int/lit8 v4, v2, 0x8

    .line 134
    .line 135
    if-eqz v4, :cond_8b

    .line 136
    .line 137
    const/16 v22, 0x1

    .line 138
    .line 139
    goto :goto_8d

    .line 140
    :cond_8b
    const/16 v22, 0x0

    .line 141
    .line 142
    :goto_8d
    and-int/lit8 v4, v2, 0x10

    .line 143
    .line 144
    if-eqz v4, :cond_94

    .line 145
    .line 146
    const/16 v26, 0x1

    .line 147
    .line 148
    goto :goto_96

    .line 149
    :cond_94
    const/16 v26, 0x0

    .line 150
    .line 151
    :goto_96
    and-int/lit8 v2, v2, 0x20

    .line 152
    .line 153
    if-eqz v2, :cond_9d

    .line 154
    .line 155
    const/16 v27, 0x1

    .line 156
    .line 157
    goto :goto_9f

    .line 158
    :cond_9d
    const/16 v27, 0x0

    .line 159
    .line 160
    :goto_9f
    const-string v2, "auto_event_mapping_android"

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 163
    .line 164
    .line 165
    move-result-object v28

    .line 166
    const-string v2, "app_events_config"

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    new-instance v16, Lq2/t;

    .line 173
    .line 174
    const-string v7, "supports_implicit_sdk_logging"

    .line 175
    .line 176
    const/4 v8, 0x0

    .line 177
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v17

    .line 181
    const-string v7, "gdpv4_nux_content"

    .line 182
    .line 183
    const-string v9, ""

    .line 184
    .line 185
    invoke-virtual {v1, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    const-string v9, "settingsJSON.optString(A\u2026_SETTING_NUX_CONTENT, \"\")"

    .line 190
    .line 191
    invoke-static {v9, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    const-string v9, "gdpv4_nux_enabled"

    .line 195
    .line 196
    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 197
    .line 198
    .line 199
    const-string v8, "app_events_session_timeout"

    .line 200
    .line 201
    const/16 v9, 0x3c

    .line 202
    .line 203
    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 204
    .line 205
    .line 206
    move-result v19

    .line 207
    sget-object v8, Lq2/d0;->b:Ljava/util/EnumSet;

    .line 208
    .line 209
    const-string v8, "seamless_login"

    .line 210
    .line 211
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v8

    .line 215
    const-class v10, Lq2/d0;

    .line 216
    .line 217
    invoke-static {v10}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    sget-object v11, Lq2/d0;->b:Ljava/util/EnumSet;

    .line 222
    .line 223
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    :cond_e2
    :goto_e2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    if-eqz v12, :cond_fb

    .line 232
    .line 233
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v12

    .line 237
    check-cast v12, Lq2/d0;

    .line 238
    .line 239
    iget-wide v13, v12, Lq2/d0;->a:J

    .line 240
    .line 241
    and-long/2addr v13, v8

    .line 242
    const-wide/16 v20, 0x0

    .line 243
    .line 244
    cmp-long v13, v13, v20

    .line 245
    .line 246
    if-eqz v13, :cond_e2

    .line 247
    .line 248
    invoke-virtual {v10, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto :goto_e2

    .line 252
    :cond_fb
    const-string v8, "result"

    .line 253
    .line 254
    invoke-static {v8, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    const-string v8, "android_dialog_configs"

    .line 258
    .line 259
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    new-instance v9, Ljava/util/HashMap;

    .line 264
    .line 265
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 266
    .line 267
    .line 268
    if-eqz v8, :cond_1f8

    .line 269
    .line 270
    const-string v11, "data"

    .line 271
    .line 272
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    if-eqz v8, :cond_1f8

    .line 277
    .line 278
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 279
    .line 280
    .line 281
    move-result v11

    .line 282
    const/4 v12, 0x0

    .line 283
    :goto_11a
    if-ge v12, v11, :cond_1f8

    .line 284
    .line 285
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 286
    .line 287
    .line 288
    move-result-object v13

    .line 289
    const-string v14, "dialogConfigData.optJSONObject(i)"

    .line 290
    .line 291
    invoke-static {v14, v13}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    invoke-static {v14}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v15

    .line 302
    if-eqz v15, :cond_138

    .line 303
    .line 304
    move-object/from16 v21, v3

    .line 305
    .line 306
    move-object v3, v5

    .line 307
    move-object/from16 v24, v7

    .line 308
    .line 309
    move-object/from16 v25, v8

    .line 310
    .line 311
    goto/16 :goto_1cf

    .line 312
    .line 313
    :cond_138
    const-string v15, "dialogNameWithFeature"

    .line 314
    .line 315
    invoke-static {v15, v14}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    const-string v15, "|"

    .line 319
    .line 320
    filled-new-array {v15}, [Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v15

    .line 324
    const/4 v5, 0x6

    .line 325
    const/4 v6, 0x0

    .line 326
    invoke-static {v14, v15, v6, v5}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    const/4 v14, 0x2

    .line 335
    if-eq v6, v14, :cond_159

    .line 336
    .line 337
    :cond_150
    :goto_150
    move-object/from16 v21, v3

    .line 338
    .line 339
    move-object/from16 v24, v7

    .line 340
    .line 341
    move-object/from16 v25, v8

    .line 342
    .line 343
    const/4 v3, 0x0

    .line 344
    goto/16 :goto_1cf

    .line 345
    .line 346
    :cond_159
    invoke-static {v5}, Ls6/g;->q(Ljava/util/List;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v6

    .line 350
    check-cast v6, Ljava/lang/String;

    .line 351
    .line 352
    invoke-static {v5}, Ls6/g;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    check-cast v5, Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v6}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-nez v14, :cond_150

    .line 363
    .line 364
    invoke-static {v5}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v14

    .line 368
    if-eqz v14, :cond_172

    .line 369
    .line 370
    goto :goto_150

    .line 371
    :cond_172
    const-string v14, "url"

    .line 372
    .line 373
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v14

    .line 377
    invoke-static {v14}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v15

    .line 381
    if-nez v15, :cond_181

    .line 382
    .line 383
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 384
    .line 385
    .line 386
    :cond_181
    const-string v14, "versions"

    .line 387
    .line 388
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 389
    .line 390
    .line 391
    move-result-object v13

    .line 392
    if-eqz v13, :cond_1c5

    .line 393
    .line 394
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 395
    .line 396
    .line 397
    move-result v14

    .line 398
    new-array v15, v14, [I

    .line 399
    .line 400
    move-object/from16 v21, v3

    .line 401
    .line 402
    const/4 v3, 0x0

    .line 403
    :goto_192
    if-ge v3, v14, :cond_1c0

    .line 404
    .line 405
    move-object/from16 v24, v7

    .line 406
    .line 407
    const/4 v7, -0x1

    .line 408
    move-object/from16 v25, v8

    .line 409
    .line 410
    invoke-virtual {v13, v3, v7}, Lorg/json/JSONArray;->optInt(II)I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    if-ne v8, v7, :cond_1b7

    .line 415
    .line 416
    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    invoke-static {v7}, Lq2/g0;->B(Ljava/lang/String;)Z

    .line 421
    .line 422
    .line 423
    move-result v30

    .line 424
    if-nez v30, :cond_1b7

    .line 425
    .line 426
    :try_start_1a9
    const-string v8, "versionString"

    .line 427
    .line 428
    invoke-static {v8, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 432
    .line 433
    .line 434
    move-result v7
    :try_end_1b2
    .catch Ljava/lang/NumberFormatException; {:try_start_1a9 .. :try_end_1b2} :catch_1b3

    .line 435
    goto :goto_1b6

    .line 436
    :catch_1b3
    sget-object v7, Lx1/r;->a:Lx1/r;

    .line 437
    .line 438
    const/4 v7, -0x1

    .line 439
    :goto_1b6
    move v8, v7

    .line 440
    :cond_1b7
    aput v8, v15, v3

    .line 441
    .line 442
    add-int/lit8 v3, v3, 0x1

    .line 443
    .line 444
    move-object/from16 v7, v24

    .line 445
    .line 446
    move-object/from16 v8, v25

    .line 447
    .line 448
    goto :goto_192

    .line 449
    :cond_1c0
    :goto_1c0
    move-object/from16 v24, v7

    .line 450
    .line 451
    move-object/from16 v25, v8

    .line 452
    .line 453
    goto :goto_1c8

    .line 454
    :cond_1c5
    move-object/from16 v21, v3

    .line 455
    .line 456
    goto :goto_1c0

    .line 457
    :goto_1c8
    new-instance v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 458
    .line 459
    const/16 v7, 0x17

    .line 460
    .line 461
    invoke-direct {v3, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    :goto_1cf
    if-nez v3, :cond_1d2

    .line 465
    .line 466
    goto :goto_1ed

    .line 467
    :cond_1d2
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 468
    .line 469
    check-cast v5, Ljava/lang/String;

    .line 470
    .line 471
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v6

    .line 475
    check-cast v6, Ljava/util/Map;

    .line 476
    .line 477
    if-nez v6, :cond_1e6

    .line 478
    .line 479
    new-instance v6, Ljava/util/HashMap;

    .line 480
    .line 481
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v9, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    :cond_1e6
    iget-object v5, v3, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v5, Ljava/lang/String;

    .line 490
    .line 491
    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    :goto_1ed
    add-int/lit8 v12, v12, 0x1

    .line 495
    .line 496
    move-object/from16 v3, v21

    .line 497
    .line 498
    move-object/from16 v7, v24

    .line 499
    .line 500
    move-object/from16 v8, v25

    .line 501
    .line 502
    const/4 v5, 0x0

    .line 503
    goto/16 :goto_11a

    .line 504
    .line 505
    :cond_1f8
    move-object/from16 v24, v7

    .line 506
    .line 507
    const-string v3, "smart_login_bookmark_icon_url"

    .line 508
    .line 509
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    const-string v5, "settingsJSON.optString(S\u2026_LOGIN_BOOKMARK_ICON_URL)"

    .line 514
    .line 515
    invoke-static {v5, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    const-string v5, "smart_login_menu_icon_url"

    .line 519
    .line 520
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v5

    .line 524
    const-string v6, "settingsJSON.optString(SMART_LOGIN_MENU_ICON_URL)"

    .line 525
    .line 526
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    const-string v6, "sdk_update_message"

    .line 530
    .line 531
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v6

    .line 535
    const-string v7, "settingsJSON.optString(SDK_UPDATE_MESSAGE)"

    .line 536
    .line 537
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    const-string v7, "aam_rules"

    .line 541
    .line 542
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v30

    .line 546
    const-string v7, "suggested_events_setting"

    .line 547
    .line 548
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v31

    .line 552
    const-string v7, "restrictive_data_filter_params"

    .line 553
    .line 554
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v32

    .line 558
    const-string v7, "protected_mode_rules"

    .line 559
    .line 560
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 561
    .line 562
    .line 563
    move-result-object v8

    .line 564
    const-string v11, "standard_params"

    .line 565
    .line 566
    invoke-static {v11, v8}, Lq2/w;->i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 567
    .line 568
    .line 569
    move-result-object v33

    .line 570
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    const-string v11, "maca_rules"

    .line 575
    .line 576
    invoke-static {v11, v8}, Lq2/w;->i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 577
    .line 578
    .line 579
    move-result-object v34

    .line 580
    invoke-static {v1}, Lq2/w;->h(Lorg/json/JSONObject;)Ljava/util/HashMap;

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 584
    .line 585
    .line 586
    move-result-object v8

    .line 587
    const-string v11, "blocklist_events"

    .line 588
    .line 589
    invoke-static {v11, v8}, Lq2/w;->i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 590
    .line 591
    .line 592
    move-result-object v35

    .line 593
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 594
    .line 595
    .line 596
    move-result-object v8

    .line 597
    const-string v11, "redacted_events"

    .line 598
    .line 599
    invoke-static {v11, v8}, Lq2/w;->i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 600
    .line 601
    .line 602
    move-result-object v36

    .line 603
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    const-string v11, "sensitive_params"

    .line 608
    .line 609
    invoke-static {v11, v8}, Lq2/w;->i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 610
    .line 611
    .line 612
    move-result-object v37

    .line 613
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 614
    .line 615
    .line 616
    move-result-object v8

    .line 617
    const-string v11, "standard_params_schema"

    .line 618
    .line 619
    invoke-static {v11, v8}, Lq2/w;->i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 620
    .line 621
    .line 622
    move-result-object v38

    .line 623
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 624
    .line 625
    .line 626
    move-result-object v7

    .line 627
    const-string v8, "standard_params_blocked"

    .line 628
    .line 629
    invoke-static {v8, v7}, Lq2/w;->i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    .line 630
    .line 631
    .line 632
    move-result-object v39

    .line 633
    const-string v7, "fb_currency"

    .line 634
    .line 635
    invoke-static {v7, v4}, Lq2/w;->f(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    .line 636
    .line 637
    .line 638
    move-result-object v40

    .line 639
    const-string v7, "_valueToSum"

    .line 640
    .line 641
    invoke-static {v7, v4}, Lq2/w;->f(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    .line 642
    .line 643
    .line 644
    move-result-object v41

    .line 645
    const/4 v8, 0x0

    .line 646
    invoke-static {v4, v8}, Lq2/w;->g(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    .line 647
    .line 648
    .line 649
    move-result-object v42

    .line 650
    const/4 v7, 0x1

    .line 651
    invoke-static {v4, v7}, Lq2/w;->g(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;

    .line 652
    .line 653
    .line 654
    move-result-object v43

    .line 655
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    if-eqz v1, :cond_2ad

    .line 660
    .line 661
    :try_start_294
    const-string v2, "iap_manual_and_auto_log_dedup_window_millis"

    .line 662
    .line 663
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 664
    .line 665
    .line 666
    move-result-wide v1

    .line 667
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 668
    .line 669
    .line 670
    move-result-object v1
    :try_end_29e
    .catch Ljava/lang/Exception; {:try_start_294 .. :try_end_29e} :catch_2ad

    .line 671
    move-object/from16 v44, v1

    .line 672
    .line 673
    move-object/from16 v25, v5

    .line 674
    .line 675
    move-object/from16 v29, v6

    .line 676
    .line 677
    move-object/from16 v21, v9

    .line 678
    .line 679
    move-object/from16 v20, v10

    .line 680
    .line 681
    move-object/from16 v18, v24

    .line 682
    .line 683
    :goto_2aa
    move-object/from16 v24, v3

    .line 684
    .line 685
    goto :goto_2ba

    .line 686
    :catch_2ad
    :cond_2ad
    move-object/from16 v25, v5

    .line 687
    .line 688
    move-object/from16 v29, v6

    .line 689
    .line 690
    move-object/from16 v21, v9

    .line 691
    .line 692
    move-object/from16 v20, v10

    .line 693
    .line 694
    move-object/from16 v18, v24

    .line 695
    .line 696
    const/16 v44, 0x0

    .line 697
    .line 698
    goto :goto_2aa

    .line 699
    :goto_2ba
    invoke-direct/range {v16 .. v44}, Lq2/t;-><init>(ZLjava/lang/String;ILjava/util/EnumSet;Ljava/util/HashMap;ZLq2/k;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Long;)V

    .line 700
    .line 701
    .line 702
    move-object/from16 v1, v16

    .line 703
    .line 704
    sget-object v2, Lq2/w;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 705
    .line 706
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    return-object v1
.end method

.method public static f(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .registers 13

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    const-string v1, "value"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_e

    .line 7
    .line 8
    :try_start_7
    const-string v3, "iap_manual_and_auto_log_dedup_keys"

    .line 9
    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move-object p1, v2

    .line 16
    :goto_f
    if-nez p1, :cond_12

    .line 17
    .line 18
    goto :goto_70

    .line 19
    :cond_12
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    move v5, v4

    .line 25
    :goto_18
    if-ge v5, v3, :cond_70

    .line 26
    .line 27
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v8, "prod_keys"

    .line 36
    .line 37
    invoke-static {v7, v8}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_2b

    .line 42
    .line 43
    goto :goto_6d

    .line 44
    :cond_2b
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    move v8, v4

    .line 53
    :goto_34
    if-ge v8, v7, :cond_6d

    .line 54
    .line 55
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-static {v10, p0}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-nez v10, :cond_47

    .line 68
    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_34

    .line 72
    :cond_47
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    :goto_54
    if-ge v4, v0, :cond_64

    .line 86
    .line 87
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_54

    .line 101
    :cond_64
    new-instance p0, Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6c} :catch_70

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :cond_6d
    :goto_6d
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    goto :goto_18

    .line 113
    :catch_70
    :cond_70
    :goto_70
    return-object v2
.end method

.method public static g(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    .registers 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "key"

    .line 4
    .line 5
    const-string v2, "value"

    .line 6
    .line 7
    if-eqz v0, :cond_13

    .line 8
    .line 9
    :try_start_8
    const-string v4, "iap_manual_and_auto_log_dedup_keys"

    .line 10
    .line 11
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_14

    .line 16
    :catch_f
    :goto_f
    const/16 v16, 0x0

    .line 17
    .line 18
    goto/16 :goto_9d

    .line 19
    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    if-nez v0, :cond_17

    .line 22
    .line 23
    goto :goto_f

    .line 24
    :cond_17
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v5, 0x0

    .line 29
    move v6, v5

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_1e
    if-ge v6, v4, :cond_9c

    .line 32
    .line 33
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    const-string v10, "prod_keys"

    .line 42
    .line 43
    invoke-static {v9, v10}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-eqz v10, :cond_32

    .line 48
    .line 49
    if-nez p1, :cond_3c

    .line 50
    .line 51
    :cond_32
    const-string v10, "test_keys"

    .line 52
    .line 53
    invoke-static {v9, v10}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    if-eqz v9, :cond_3f

    .line 58
    .line 59
    if-nez p1, :cond_3f

    .line 60
    .line 61
    :cond_3c
    const/16 v16, 0x0

    .line 62
    .line 63
    goto :goto_99

    .line 64
    :cond_3f
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    move v10, v5

    .line 73
    :goto_48
    if-ge v10, v9, :cond_3c

    .line 74
    .line 75
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    const-string v13, "_valueToSum"

    .line 84
    .line 85
    invoke-static {v12, v13}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    if-nez v13, :cond_62

    .line 90
    .line 91
    const-string v13, "fb_currency"

    .line 92
    .line 93
    invoke-static {v12, v13}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    if-eqz v13, :cond_65

    .line 98
    .line 99
    :cond_62
    const/16 v16, 0x0

    .line 100
    .line 101
    goto :goto_96

    .line 102
    :cond_65
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    new-instance v13, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 112
    .line 113
    .line 114
    move-result v14
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_72} :catch_f

    .line 115
    move v15, v5

    .line 116
    :goto_73
    if-ge v15, v14, :cond_85

    .line 117
    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    :try_start_77
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v15, v15, 0x1

    .line 132
    .line 133
    goto :goto_73

    .line 134
    :cond_85
    const/16 v16, 0x0

    .line 135
    .line 136
    if-nez v7, :cond_8e

    .line 137
    .line 138
    new-instance v7, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    :cond_8e
    new-instance v3, Lr6/d;

    .line 144
    .line 145
    invoke-direct {v3, v12, v13}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_96} :catch_9d

    .line 149
    .line 150
    .line 151
    :goto_96
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_48

    .line 154
    :goto_99
    add-int/lit8 v6, v6, 0x1

    .line 155
    .line 156
    goto :goto_1e

    .line 157
    :cond_9c
    return-object v7

    .line 158
    :catch_9d
    :goto_9d
    return-object v16
.end method

.method public static h(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "auto_log_app_events_default"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_1b

    .line 13
    .line 14
    :try_start_d
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_18} :catch_19

    .line 23
    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :catch_19
    sget-object v1, Lx1/r;->a:Lx1/r;

    .line 27
    .line 28
    :cond_1b
    :goto_1b
    const-string v1, "auto_log_app_events_enabled"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_31

    .line 35
    .line 36
    :try_start_23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_2e} :catch_2f

    .line 45
    .line 46
    .line 47
    goto :goto_31

    .line 48
    :catch_2f
    sget-object p0, Lx1/r;->a:Lx1/r;

    .line 49
    .line 50
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_38

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :cond_38
    return-object v0
.end method

.method public static i(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 2

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_7
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public static final k(Ljava/lang/String;Z)Lq2/t;
    .registers 3

    .line 1
    const-string v0, "applicationId"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_16

    .line 7
    .line 8
    sget-object p1, Lq2/w;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_16

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lq2/t;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_16
    invoke-static {}, Lq2/w;->a()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p0, p1}, Lq2/w;->e(Ljava/lang/String;Lorg/json/JSONObject;)Lq2/t;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_34

    .line 40
    .line 41
    sget-object p0, Lq2/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    sget-object v0, Lq2/v;->c:Lq2/v;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p0, Lq2/w;->a:Lq2/w;

    .line 49
    .line 50
    invoke-virtual {p0}, Lq2/w;->j()V

    .line 51
    .line 52
    .line 53
    :cond_34
    return-object p1
.end method


# virtual methods
.method public final declared-synchronized j()V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lq2/w;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lq2/v;

    .line 9
    .line 10
    sget-object v1, Lq2/v;->a:Lq2/v;

    .line 11
    .line 12
    if-eq v1, v0, :cond_5f

    .line 13
    .line 14
    sget-object v1, Lq2/v;->b:Lq2/v;

    .line 15
    .line 16
    if-ne v1, v0, :cond_12

    .line 17
    .line 18
    goto :goto_5f

    .line 19
    :cond_12
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lq2/w;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lq2/t;

    .line 30
    .line 31
    new-instance v2, Landroid/os/Handler;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lq2/v;->d:Lq2/v;

    .line 41
    .line 42
    if-ne v3, v0, :cond_46

    .line 43
    .line 44
    :goto_2b
    sget-object v0, Lq2/w;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_44

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ly1/l;

    .line 57
    .line 58
    new-instance v1, Lq2/u;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lq2/u;-><init>(Ly1/l;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_42

    .line 64
    .line 65
    .line 66
    goto :goto_2b

    .line 67
    :catchall_42
    move-exception v0

    .line 68
    goto :goto_61

    .line 69
    :cond_44
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_46
    :goto_46
    :try_start_46
    sget-object v0, Lq2/w;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_5d

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ly1/l;

    .line 84
    .line 85
    new-instance v3, Lq2/u;

    .line 86
    .line 87
    invoke-direct {v3, v0, v1}, Lq2/u;-><init>(Ly1/l;Lq2/t;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_42

    .line 91
    .line 92
    .line 93
    goto :goto_46

    .line 94
    :cond_5d
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :cond_5f
    :goto_5f
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_42

    .line 99
    throw v0
.end method
