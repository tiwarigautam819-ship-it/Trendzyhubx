###### Class y1.e (y1.e)
.class public final Ly1/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:Ljava/util/HashSet;


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lorg/json/JSONObject;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly1/e;->f:Ljava/util/HashSet;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZZLjava/util/UUID;Ly1/o;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p7

    move-object/from16 v0, p8

    const-string v6, "contextName"

    invoke-static {v6, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "eventName"

    invoke-static {v6, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move/from16 v7, p5

    .line 2
    iput-boolean v7, v1, Ly1/e;->c:Z

    move/from16 v7, p6

    .line 3
    iput-boolean v7, v1, Ly1/e;->d:Z

    .line 4
    iput-object v3, v1, Ly1/e;->e:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v0, :cond_74

    .line 5
    :try_start_26
    iget-object v0, v0, Ly1/o;->a:Ljava/util/LinkedHashMap;

    .line 6
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ls6/r;->s(I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 9
    move-object v10, v9

    check-cast v10, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly1/p;

    .line 11
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "iap_parameters"

    .line 12
    check-cast v9, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 14
    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 15
    :cond_61
    invoke-static {v8}, Ls6/r;->x(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 16
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_6a} :catch_6b

    goto :goto_6c

    :catch_6b
    move-object v8, v7

    :goto_6c
    if-nez v8, :cond_79

    .line 17
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    goto :goto_79

    .line 18
    :cond_74
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :cond_79
    :goto_79
    iput-object v8, v1, Ly1/e;->b:Lorg/json/JSONObject;

    .line 19
    invoke-static {v3}, Lm1/j;->n(Ljava/lang/String;)V

    .line 20
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 21
    sget-object v0, Ln2/b;->a:Ln2/b;

    .line 22
    const-class v9, Ln2/b;

    invoke-static {v9}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_90

    :goto_8e
    move-object v0, v7

    goto :goto_b7

    .line 23
    :cond_90
    :try_start_90
    sget-boolean v0, Ln2/b;->b:Z

    if-eqz v0, :cond_b1

    sget-object v11, Ln2/b;->a:Ln2/b;

    .line 24
    invoke-static {v11}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_af

    if-eqz v0, :cond_9e

    :goto_9c
    move v0, v10

    goto :goto_aa

    .line 25
    :cond_9e
    :try_start_9e
    sget-object v0, Ln2/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_a5

    goto :goto_aa

    :catchall_a5
    move-exception v0

    :try_start_a6
    invoke-static {v0, v11}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_9c

    :goto_aa
    if-eqz v0, :cond_b1

    .line 26
    const-string v0, "_removed_"
    :try_end_ae
    .catchall {:try_start_a6 .. :try_end_ae} :catchall_af

    goto :goto_b7

    :catchall_af
    move-exception v0

    goto :goto_b3

    :cond_b1
    move-object v0, v3

    goto :goto_b7

    .line 27
    :goto_b3
    invoke-static {v0, v9}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_8e

    .line 28
    :goto_b7
    invoke-static {v0, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10e

    .line 29
    sget-object v0, Lj2/g;->a:Lj2/g;

    .line 30
    const-class v11, Lj2/g;

    invoke-static {v11}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    goto :goto_10d

    .line 31
    :cond_c8
    :try_start_c8
    sget-boolean v0, Lj2/g;->b:Z

    if-eqz v0, :cond_108

    .line 32
    sget-object v12, Lj2/g;->a:Lj2/g;

    .line 33
    invoke-static {v12}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_106

    if-eqz v0, :cond_d5

    goto :goto_103

    .line 34
    :cond_d5
    :try_start_d5
    sget-object v0, Lj2/g;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 35
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 36
    sget-object v14, Lj2/g;->c:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    if-eqz v14, :cond_e1

    .line 37
    invoke-virtual {v14, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14
    :try_end_fb
    .catchall {:try_start_d5 .. :try_end_fb} :catchall_ff

    if-eqz v14, :cond_e1

    move-object v7, v13

    goto :goto_103

    :catchall_ff
    move-exception v0

    .line 38
    :try_start_100
    invoke-static {v0, v12}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_106

    :cond_103
    :goto_103
    if-eqz v7, :cond_108

    goto :goto_10d

    :catchall_106
    move-exception v0

    goto :goto_10a

    :cond_108
    move-object v7, v3

    goto :goto_10d

    .line 39
    :goto_10a
    invoke-static {v0, v11}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_10d
    move-object v0, v7

    .line 40
    :cond_10e
    const-string v3, "_eventName"

    invoke-virtual {v8, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/16 v0, 0x3e8

    int-to-long v13, v0

    div-long/2addr v11, v13

    const-string v0, "_logTime"

    invoke-virtual {v8, v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const-string v0, "_ui"

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v5, :cond_12c

    .line 43
    const-string v0, "_session_id"

    invoke-virtual {v8, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12c
    const/4 v2, 0x1

    if-eqz v4, :cond_2f5

    .line 44
    iget-object v3, v1, Ly1/e;->e:Ljava/lang/String;

    .line 45
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 47
    const-string v11, "key"

    invoke-static {v11, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7}, Lm1/j;->n(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 49
    instance-of v12, v11, Ljava/lang/String;

    if-nez v12, :cond_176

    instance-of v12, v11, Ljava/lang/Number;

    if-eqz v12, :cond_15f

    goto :goto_176

    .line 50
    :cond_15f
    new-instance v0, Lx1/l;

    const/4 v3, 0x2

    .line 51
    new-array v4, v3, [Ljava/lang/Object;

    aput-object v11, v4, v10

    aput-object v7, v4, v2

    .line 52
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-direct {v0, v2}, Lx1/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_176
    :goto_176
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13e

    .line 55
    :cond_17e
    const-class v4, Lj2/c;

    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    goto/16 :goto_1f9

    .line 56
    :cond_188
    :try_start_188
    sget-boolean v0, Lj2/c;->b:Z

    if-eqz v0, :cond_1f9

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0
    :try_end_190
    .catchall {:try_start_188 .. :try_end_190} :catchall_1c9

    if-eqz v0, :cond_193

    goto :goto_1f9

    .line 57
    :cond_193
    :try_start_193
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Ls6/g;->w(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 58
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a6
    :goto_1a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 60
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1d9

    check-cast v12, Ljava/lang/String;

    .line 61
    sget-object v13, Lj2/c;->a:Lj2/c;

    invoke-virtual {v13, v11}, Lj2/c;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1cb

    invoke-virtual {v13, v12}, Lj2/c;->a(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1a6

    goto :goto_1cb

    :catchall_1c9
    move-exception v0

    goto :goto_1f6

    .line 62
    :cond_1cb
    :goto_1cb
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-boolean v13, Lj2/c;->c:Z

    if-eqz v13, :cond_1d3

    goto :goto_1d5

    :cond_1d3
    const-string v12, ""

    :goto_1d5
    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a6

    .line 64
    :cond_1d9
    const-string v0, "Required value was null."

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 65
    :cond_1e1
    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1f9

    .line 66
    const-string v0, "_onDeviceParams"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "restrictiveParamJson.toString()"

    invoke-static {v11, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_1f5} :catch_1f9
    .catchall {:try_start_193 .. :try_end_1f5} :catchall_1c9

    goto :goto_1f9

    .line 67
    :goto_1f6
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 68
    :catch_1f9
    :cond_1f9
    :goto_1f9
    invoke-static {v5}, Ld7/o;->a(Ljava/util/HashMap;)Ljava/util/Map;

    sget-object v0, Ln2/b;->a:Ln2/b;

    .line 69
    invoke-static {v9}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    goto/16 :goto_27a

    :cond_206
    :try_start_206
    invoke-static {v6, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    sget-boolean v0, Ln2/b;->b:Z

    if-nez v0, :cond_20e

    goto :goto_27a

    .line 71
    :cond_20e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v11, v10

    :cond_223
    :goto_223
    if-ge v11, v7, :cond_23e

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Ljava/lang/String;

    .line 74
    sget-object v13, Ln2/b;->a:Ln2/b;

    invoke-virtual {v13, v3, v12}, Ln2/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_223

    .line 75
    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {v5, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_223

    :catchall_23c
    move-exception v0

    goto :goto_277

    .line 77
    :cond_23e
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4
    :try_end_242
    .catchall {:try_start_206 .. :try_end_242} :catchall_23c

    if-nez v4, :cond_27a

    .line 78
    :try_start_244
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 79
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_251
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 80
    invoke-virtual {v4, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_251

    .line 81
    :cond_26d
    const-string v0, "_restrictedParams"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_276
    .catch Lorg/json/JSONException; {:try_start_244 .. :try_end_276} :catch_27a
    .catchall {:try_start_244 .. :try_end_276} :catchall_23c

    goto :goto_27a

    .line 82
    :goto_277
    invoke-static {v0, v9}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 83
    :catch_27a
    :cond_27a
    :goto_27a
    invoke-static {v5}, Ld7/o;->a(Ljava/util/HashMap;)Ljava/util/Map;

    sget-object v0, Ld2/b;->a:Ld2/b;

    .line 84
    const-class v4, Ld2/b;

    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_288

    goto :goto_2d9

    :cond_288
    :try_start_288
    invoke-static {v6, v3}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    sget-boolean v0, Ld2/b;->b:Z

    if-nez v0, :cond_290

    goto :goto_2d9

    .line 86
    :cond_290
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 87
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Ld2/b;->c:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v10

    :cond_2a7
    :goto_2a7
    if-ge v9, v7, :cond_2d9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Ld2/a;

    .line 89
    iget-object v12, v11, Ld2/a;->a:Ljava/lang/String;

    .line 90
    invoke-static {v12, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2ba

    goto :goto_2a7

    .line 91
    :cond_2ba
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v10

    :cond_2bf
    :goto_2bf
    if-ge v13, v12, :cond_2a7

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Ljava/lang/String;

    .line 92
    iget-object v15, v11, Ld2/a;->b:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2bf

    .line 94
    invoke-interface {v5, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d4
    .catchall {:try_start_288 .. :try_end_2d4} :catchall_2d5

    goto :goto_2bf

    :catchall_2d5
    move-exception v0

    .line 95
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 96
    :cond_2d9
    :goto_2d9
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2e1

    :cond_2f5
    if-eqz p3, :cond_300

    .line 98
    const-string v0, "_valueToSum"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v8, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 99
    :cond_300
    iget-boolean v0, v1, Ly1/e;->d:Z

    const-string v3, "1"

    if-eqz v0, :cond_30b

    .line 100
    const-string v0, "_inBackground"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_30b
    iget-boolean v0, v1, Ly1/e;->c:Z

    if-eqz v0, :cond_315

    .line 102
    const-string v0, "_implicitlyLogged"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_32d

    .line 103
    :cond_315
    sget-object v0, Lq2/z;->c:Lo3/a;

    .line 104
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "eventObject.toString()"

    invoke-static {v3, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v10

    .line 105
    sget-object v0, Lx1/e0;->d:Lx1/e0;

    const-string v3, "AppEvents"

    const-string v4, "Created app event \'%s\'"

    invoke-static {v0, v3, v4, v2}, Lo3/a;->j(Lx1/e0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_32d
    iput-object v8, v1, Ly1/e;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ly1/e;->a:Lorg/json/JSONObject;

    .line 109
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ly1/e;->b:Lorg/json/JSONObject;

    .line 110
    iput-boolean p3, p0, Ly1/e;->c:Z

    .line 111
    const-string p1, "_eventName"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "jsonObject.optString(Con\u2026nts.EVENT_NAME_EVENT_KEY)"

    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Ly1/e;->e:Ljava/lang/String;

    .line 112
    iput-boolean p4, p0, Ly1/e;->d:Z

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 6

    .line 1
    new-instance v0, Ly1/d;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/e;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "jsonObject.toString()"

    .line 10
    .line 11
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Ly1/e;->b:Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "operationalJsonObject.toString()"

    .line 21
    .line 22
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v3, p0, Ly1/e;->c:Z

    .line 26
    .line 27
    iget-boolean v4, p0, Ly1/e;->d:Z

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Ly1/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "_eventName"

    .line 2
    .line 3
    iget-object v1, p0, Ly1/e;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v2, p0, Ly1/e;->c:Z

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v4, v3, [Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v0, v4, v5

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v2, v4, v0

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    aput-object v1, v4, v0

    .line 30
    .line 31
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "\"%s\", implicit: %b, json: %s"

    .line 36
    .line 37
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
