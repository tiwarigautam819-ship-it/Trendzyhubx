###### Class o2.a (o2.a)
.class public final Lo2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lo2/a;

.field public static b:Ljava/lang/Object;

.field public static c:Ljava/lang/Object;

.field public static d:Ljava/lang/Object;

.field public static e:Lorg/json/JSONObject;

.field public static f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo2/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lo2/a;->a:Lo2/a;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    sget-object v0, Lo2/f;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    sget-object v0, Lo2/b;->a:Lo2/b;

    .line 4
    .line 5
    const-class v0, Lo2/b;

    .line 6
    .line 7
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_e

    .line 13
    .line 14
    goto :goto_22

    .line 15
    :cond_e
    :try_start_e
    sget-object v1, Lo2/b;->b:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_22

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1e

    .line 28
    .line 29
    move-object v2, p0

    .line 30
    goto :goto_22

    .line 31
    :catchall_1e
    move-exception p0

    .line 32
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_22
    :goto_22
    if-nez v2, :cond_26

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    goto :goto_39

    .line 39
    :cond_26
    const-string p0, "other"

    .line 40
    .line 41
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_38

    .line 46
    .line 47
    new-instance p0, La2/i;

    .line 48
    .line 49
    const/16 v0, 0x10

    .line 50
    .line 51
    invoke-direct {p0, v2, v0, p1}, La2/i;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Lq2/g0;->K(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :cond_38
    const/4 p0, 0x1

    .line 58
    :goto_39
    return p0
.end method

.method public static b(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .registers 9

    .line 1
    const-string v0, "hostView"

    .line 2
    .line 3
    invoke-static {v0, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sget-object v1, Lo2/f;->e:Ljava/util/HashSet;

    .line 11
    .line 12
    const-class v1, Lo2/f;

    .line 13
    .line 14
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_16

    .line 20
    .line 21
    :goto_14
    move-object v2, v3

    .line 22
    goto :goto_1e

    .line 23
    :cond_16
    :try_start_16
    sget-object v2, Lo2/f;->e:Ljava/util/HashSet;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_19

    .line 24
    .line 25
    goto :goto_1e

    .line 26
    :catchall_19
    move-exception v2

    .line 27
    invoke-static {v2, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_14

    .line 31
    :goto_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_8e

    .line 40
    .line 41
    new-instance v2, Lo2/f;

    .line 42
    .line 43
    invoke-direct {v2, p0, p1, p2}, Lo2/f;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-class p1, Lc2/e;

    .line 47
    .line 48
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_36

    .line 53
    .line 54
    goto :goto_79

    .line 55
    :cond_36
    :try_start_36
    const-string p2, "android.view.View"

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string v4, "mListenerInfo"

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 64
    .line 65
    .line 66
    move-result-object p2
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_42} :catch_51
    .catch Ljava/lang/NoSuchFieldException; {:try_start_36 .. :try_end_42} :catch_51
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_79
    .catchall {:try_start_36 .. :try_end_42} :catchall_4f

    .line 67
    :try_start_42
    const-string v4, "android.view.View$ListenerInfo"

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v5, "mOnClickListener"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 76
    .line 77
    .line 78
    move-result-object v4
    :try_end_4e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_42 .. :try_end_4e} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_42 .. :try_end_4e} :catch_52
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4e} :catch_79
    .catchall {:try_start_42 .. :try_end_4e} :catchall_4f

    .line 79
    goto :goto_53

    .line 80
    :catchall_4f
    move-exception p0

    .line 81
    goto :goto_76

    .line 82
    :catch_51
    move-object p2, v3

    .line 83
    :catch_52
    move-object v4, v3

    .line 84
    :goto_53
    if-eqz p2, :cond_72

    .line 85
    .line 86
    if-nez v4, :cond_58

    .line 87
    .line 88
    goto :goto_72

    .line 89
    :cond_58
    const/4 v5, 0x1

    .line 90
    :try_start_59
    invoke-virtual {p2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5f} :catch_79
    .catchall {:try_start_59 .. :try_end_5f} :catchall_4f

    .line 94
    .line 95
    .line 96
    :try_start_5f
    invoke-virtual {p2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2
    :try_end_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_66} :catch_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_66} :catch_79
    .catchall {:try_start_5f .. :try_end_66} :catchall_4f

    .line 103
    goto :goto_68

    .line 104
    :catch_67
    move-object p2, v3

    .line 105
    :goto_68
    if-nez p2, :cond_6e

    .line 106
    .line 107
    :try_start_6a
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    goto :goto_79

    .line 111
    :cond_6e
    invoke-virtual {v4, p2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_79

    .line 115
    :cond_72
    :goto_72
    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_75} :catch_79
    .catchall {:try_start_6a .. :try_end_75} :catchall_4f

    .line 116
    .line 117
    .line 118
    goto :goto_79

    .line 119
    :goto_76
    invoke-static {p0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :catch_79
    :goto_79
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_80

    .line 127
    .line 128
    goto :goto_87

    .line 129
    :cond_80
    :try_start_80
    sget-object v3, Lo2/f;->e:Ljava/util/HashSet;
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_83

    .line 130
    .line 131
    goto :goto_87

    .line 132
    :catchall_83
    move-exception p0

    .line 133
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :goto_87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    :cond_8e
    return-void
.end method

.method public static final c(Ljava/lang/String;Lorg/json/JSONObject;)[F
    .registers 12

    .line 1
    const-class v1, Lo2/a;

    .line 2
    .line 3
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    goto :goto_54

    .line 11
    :cond_a
    :try_start_a
    sget-boolean v0, Lo2/a;->f:Z

    .line 12
    .line 13
    if-nez v0, :cond_f

    .line 14
    .line 15
    goto :goto_54

    .line 16
    :cond_f
    const/16 v0, 0x1e

    .line 17
    .line 18
    new-array v3, v0, [F

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_14
    if-ge v4, v0, :cond_1f

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    aput v5, v3, v4
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1c

    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_14

    .line 29
    :catchall_1c
    move-exception v0

    .line 30
    move-object p0, v0

    .line 31
    goto :goto_6b

    .line 32
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    const-string p0, "this as java.lang.String).toLowerCase()"

    .line 37
    .line 38
    invoke-static {p0, v9}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance p0, Lorg/json/JSONObject;

    .line 42
    .line 43
    const-string v0, "view"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "screenname"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    new-instance v6, Lorg/json/JSONArray;

    .line 63
    .line 64
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .line 66
    .line 67
    sget-object v4, Lo2/a;->a:Lo2/a;

    .line 68
    .line 69
    invoke-virtual {v4, p0, v6}, Lo2/a;->k(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, p0}, Lo2/a;->i(Lorg/json/JSONObject;)[F

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v4, v3, p1}, Lo2/a;->n([F[F)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, p0}, Lo2/a;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    if-nez v5, :cond_55

    .line 84
    .line 85
    :goto_54
    return-object v2

    .line 86
    :cond_55
    const-string p1, "screenName"

    .line 87
    .line 88
    invoke-static {p1, v7}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    const-string p0, "viewTree.toString()"

    .line 96
    .line 97
    invoke-static {p0, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {v4 .. v9}, Lo2/a;->h(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v4, v3, p0}, Lo2/a;->n([F[F)V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_6a} :catch_6a
    .catchall {:try_start_1f .. :try_end_6a} :catchall_1c

    .line 105
    .line 106
    .line 107
    :catch_6a
    return-object v3

    .line 108
    :goto_6b
    invoke-static {p0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return-object v2
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    const-class v0, Lo2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    :try_start_a
    const-string v1, "buttonText"

    .line 12
    .line 13
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "activityName"

    .line 17
    .line 18
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, " | "

    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, ", "

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "this as java.lang.String).toLowerCase()"

    .line 54
    .line 55
    invoke-static {p1, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_3a

    .line 56
    .line 57
    .line 58
    return-object p0

    .line 59
    :catchall_3a
    move-exception p0

    .line 60
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v2
.end method

.method public static final f(Ljava/io/File;)V
    .registers 21

    .line 1
    const-string v0, "4"

    .line 2
    .line 3
    const-string v1, "3"

    .line 4
    .line 5
    const-string v2, "2"

    .line 6
    .line 7
    const-string v3, "1"

    .line 8
    .line 9
    const-class v4, Lo2/a;

    .line 10
    .line 11
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_12

    .line 16
    .line 17
    goto/16 :goto_114

    .line 18
    .line 19
    :cond_12
    :try_start_12
    new-instance v5, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v5, Lo2/a;->e:Lorg/json/JSONObject;

    .line 25
    .line 26
    new-instance v5, Ljava/io/FileInputStream;

    .line 27
    .line 28
    move-object/from16 v6, p0

    .line 29
    .line 30
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    new-array v6, v6, [B

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 43
    .line 44
    .line 45
    new-instance v5, Lorg/json/JSONObject;

    .line 46
    .line 47
    new-instance v7, Ljava/lang/String;

    .line 48
    .line 49
    sget-object v8, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v5, Lo2/a;->e:Lorg/json/JSONObject;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3a} :catch_114
    .catchall {:try_start_12 .. :try_end_3a} :catchall_110

    .line 58
    .line 59
    :try_start_3a
    const-string v5, "ENGLISH"

    .line 60
    .line 61
    new-instance v6, Lr6/d;

    .line 62
    .line 63
    invoke-direct {v6, v5, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string v5, "GERMAN"

    .line 67
    .line 68
    new-instance v7, Lr6/d;

    .line 69
    .line 70
    invoke-direct {v7, v5, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    const-string v5, "SPANISH"

    .line 74
    .line 75
    new-instance v8, Lr6/d;

    .line 76
    .line 77
    invoke-direct {v8, v5, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const-string v5, "JAPANESE"

    .line 81
    .line 82
    new-instance v9, Lr6/d;

    .line 83
    .line 84
    invoke-direct {v9, v5, v0}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    const/4 v5, 0x4

    .line 88
    new-array v10, v5, [Lr6/d;

    .line 89
    .line 90
    const/4 v11, 0x0

    .line 91
    aput-object v6, v10, v11

    .line 92
    .line 93
    const/4 v6, 0x1

    .line 94
    aput-object v7, v10, v6

    .line 95
    .line 96
    const/4 v7, 0x2

    .line 97
    aput-object v8, v10, v7

    .line 98
    .line 99
    const/4 v8, 0x3

    .line 100
    aput-object v9, v10, v8

    .line 101
    .line 102
    invoke-static {v10}, Ls6/r;->u([Lr6/d;)Ljava/util/Map;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    sput-object v9, Lo2/a;->b:Ljava/lang/Object;

    .line 107
    .line 108
    const-string v9, "VIEW_CONTENT"

    .line 109
    .line 110
    const-string v10, "0"

    .line 111
    .line 112
    new-instance v12, Lr6/d;

    .line 113
    .line 114
    invoke-direct {v12, v9, v10}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const-string v9, "SEARCH"

    .line 118
    .line 119
    new-instance v10, Lr6/d;

    .line 120
    .line 121
    invoke-direct {v10, v9, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const-string v9, "ADD_TO_CART"

    .line 125
    .line 126
    new-instance v13, Lr6/d;

    .line 127
    .line 128
    invoke-direct {v13, v9, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    const-string v9, "ADD_TO_WISHLIST"

    .line 132
    .line 133
    new-instance v14, Lr6/d;

    .line 134
    .line 135
    invoke-direct {v14, v9, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    const-string v9, "INITIATE_CHECKOUT"

    .line 139
    .line 140
    new-instance v15, Lr6/d;

    .line 141
    .line 142
    invoke-direct {v15, v9, v0}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    const-string v9, "ADD_PAYMENT_INFO"

    .line 146
    .line 147
    move/from16 p0, v6

    .line 148
    .line 149
    const-string v6, "5"

    .line 150
    .line 151
    move/from16 v16, v7

    .line 152
    .line 153
    new-instance v7, Lr6/d;

    .line 154
    .line 155
    invoke-direct {v7, v9, v6}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const-string v6, "PURCHASE"

    .line 159
    .line 160
    const-string v9, "6"

    .line 161
    .line 162
    move/from16 v17, v8

    .line 163
    .line 164
    new-instance v8, Lr6/d;

    .line 165
    .line 166
    invoke-direct {v8, v6, v9}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    const-string v6, "LEAD"

    .line 170
    .line 171
    const-string v9, "7"

    .line 172
    .line 173
    move/from16 v18, v11

    .line 174
    .line 175
    new-instance v11, Lr6/d;

    .line 176
    .line 177
    invoke-direct {v11, v6, v9}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    const-string v6, "COMPLETE_REGISTRATION"

    .line 181
    .line 182
    const-string v9, "8"

    .line 183
    .line 184
    move/from16 v19, v5

    .line 185
    .line 186
    new-instance v5, Lr6/d;

    .line 187
    .line 188
    invoke-direct {v5, v6, v9}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    const/16 v6, 0x9

    .line 192
    .line 193
    new-array v6, v6, [Lr6/d;

    .line 194
    .line 195
    aput-object v12, v6, v18

    .line 196
    .line 197
    aput-object v10, v6, p0

    .line 198
    .line 199
    aput-object v13, v6, v16

    .line 200
    .line 201
    aput-object v14, v6, v17

    .line 202
    .line 203
    aput-object v15, v6, v19

    .line 204
    .line 205
    const/4 v9, 0x5

    .line 206
    aput-object v7, v6, v9

    .line 207
    .line 208
    const/4 v7, 0x6

    .line 209
    aput-object v8, v6, v7

    .line 210
    .line 211
    const/4 v7, 0x7

    .line 212
    aput-object v11, v6, v7

    .line 213
    .line 214
    const/16 v7, 0x8

    .line 215
    .line 216
    aput-object v5, v6, v7

    .line 217
    .line 218
    invoke-static {v6}, Ls6/r;->u([Lr6/d;)Ljava/util/Map;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    sput-object v5, Lo2/a;->c:Ljava/lang/Object;

    .line 223
    .line 224
    const-string v5, "BUTTON_TEXT"

    .line 225
    .line 226
    new-instance v6, Lr6/d;

    .line 227
    .line 228
    invoke-direct {v6, v5, v3}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    const-string v3, "PAGE_TITLE"

    .line 232
    .line 233
    new-instance v5, Lr6/d;

    .line 234
    .line 235
    invoke-direct {v5, v3, v2}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    const-string v2, "RESOLVED_DOCUMENT_LINK"

    .line 239
    .line 240
    new-instance v3, Lr6/d;

    .line 241
    .line 242
    invoke-direct {v3, v2, v1}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    const-string v1, "BUTTON_ID"

    .line 246
    .line 247
    new-instance v2, Lr6/d;

    .line 248
    .line 249
    invoke-direct {v2, v1, v0}, Lr6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    move/from16 v0, v19

    .line 253
    .line 254
    new-array v0, v0, [Lr6/d;

    .line 255
    .line 256
    aput-object v6, v0, v18

    .line 257
    .line 258
    aput-object v5, v0, p0

    .line 259
    .line 260
    aput-object v3, v0, v16

    .line 261
    .line 262
    aput-object v2, v0, v17

    .line 263
    .line 264
    invoke-static {v0}, Ls6/r;->u([Lr6/d;)Ljava/util/Map;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    sput-object v0, Lo2/a;->d:Ljava/lang/Object;

    .line 269
    .line 270
    sput-boolean p0, Lo2/a;->f:Z
    :try_end_10f
    .catchall {:try_start_3a .. :try_end_10f} :catchall_110

    .line 271
    .line 272
    return-void

    .line 273
    :catchall_110
    move-exception v0

    .line 274
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :catch_114
    :goto_114
    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;[F)V
    .registers 10

    .line 1
    sget-object v0, Lo2/d;->a:Lo2/d;

    .line 2
    .line 3
    const-class v0, Lo2/d;

    .line 4
    .line 5
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "event"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_f

    .line 13
    .line 14
    :goto_d
    move v1, v3

    .line 15
    goto :goto_1e

    .line 16
    :cond_f
    :try_start_f
    invoke-static {v2, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lo2/d;->c:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    .line 25
    goto :goto_1e

    .line 26
    :catchall_19
    move-exception v1

    .line 27
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_d

    .line 31
    :goto_1e
    const/4 v4, 0x0

    .line 32
    if-eqz v1, :cond_4e

    .line 33
    .line 34
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v0, Ly1/k;

    .line 39
    .line 40
    invoke-direct {v0, p2, v4}, Ly1/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_32

    .line 48
    .line 49
    goto/16 :goto_c3

    .line 50
    .line 51
    :cond_32
    :try_start_32
    new-instance p2, Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v1, "_is_suggested_event"

    .line 57
    .line 58
    const-string v2, "1"

    .line 59
    .line 60
    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "_button_text"

    .line 64
    .line 65
    invoke-virtual {p2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0, p2}, Ly1/k;->d(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_48

    .line 69
    .line 70
    .line 71
    goto/16 :goto_c3

    .line 72
    .line 73
    :catchall_48
    move-exception p0

    .line 74
    invoke-static {p0, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_c3

    .line 78
    .line 79
    :cond_4e
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_56

    .line 84
    .line 85
    :goto_54
    move v0, v3

    .line 86
    goto :goto_65

    .line 87
    :cond_56
    :try_start_56
    invoke-static {v2, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v1, Lo2/d;->d:Ljava/util/LinkedHashSet;

    .line 91
    .line 92
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_60

    .line 96
    goto :goto_65

    .line 97
    :catchall_60
    move-exception v1

    .line 98
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_54

    .line 102
    :goto_65
    if-eqz v0, :cond_c3

    .line 103
    .line 104
    new-instance v0, Landroid/os/Bundle;

    .line 105
    .line 106
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .line 108
    .line 109
    :try_start_6c
    const-string v1, "event_name"

    .line 110
    .line 111
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    new-instance p0, Lorg/json/JSONObject;

    .line 115
    .line 116
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    array-length v2, p2

    .line 125
    move v5, v3

    .line 126
    :goto_7d
    if-ge v5, v2, :cond_8c

    .line 127
    .line 128
    aget v6, p2, v5

    .line 129
    .line 130
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v6, ","

    .line 134
    .line 135
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    goto :goto_7d

    .line 141
    :cond_8c
    const-string p2, "dense"

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string p2, "button_text"

    .line 151
    .line 152
    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    .line 154
    .line 155
    const-string p1, "metadata"

    .line 156
    .line 157
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget-object p0, Lx1/z;->j:Ljava/lang/String;

    .line 165
    .line 166
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 167
    .line 168
    const-string p1, "%s/suggested_events"

    .line 169
    .line 170
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const/4 v1, 0x1

    .line 175
    new-array v2, v1, [Ljava/lang/Object;

    .line 176
    .line 177
    aput-object p2, v2, v3

    .line 178
    .line 179
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {v4, p0, v4, v4}, Lx1/w;->v(Lx1/a;Ljava/lang/String;Lorg/json/JSONObject;Lx1/v;)Lx1/z;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    iput-object v0, p0, Lx1/z;->d:Landroid/os/Bundle;

    .line 192
    .line 193
    invoke-virtual {p0}, Lx1/z;->c()Lx1/c0;
    :try_end_c3
    .catch Lorg/json/JSONException; {:try_start_6c .. :try_end_c3} :catch_c3

    .line 194
    .line 195
    .line 196
    :catch_c3
    :cond_c3
    :goto_c3
    return-void
.end method


# virtual methods
.method public d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    goto :goto_38

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "is_interacted"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_11
    const-string v0, "childviews"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_1a

    .line 25
    .line 26
    goto :goto_38

    .line 27
    :cond_1a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_1f
    if-ge v2, v0, :cond_38

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "children.getJSONObject(i)"

    .line 39
    .line 40
    invoke-static {v4, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v3}, Lo2/a;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v3
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_2e} :catch_38
    .catchall {:try_start_8 .. :try_end_2e} :catchall_34

    .line 47
    if-eqz v3, :cond_31

    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_31
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_1f

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :catch_38
    :cond_38
    :goto_38
    return-object v1
.end method

.method public g([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    goto :goto_24

    .line 9
    :cond_8
    :try_start_8
    array-length v0, p1

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_24

    .line 12
    .line 13
    aget-object v3, p1, v2

    .line 14
    .line 15
    array-length v4, p2

    .line 16
    move v5, v1

    .line 17
    :goto_10
    if-ge v5, v4, :cond_21

    .line 18
    .line 19
    aget-object v6, p2, v5

    .line 20
    .line 21
    invoke-static {v6, v3}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v6
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 25
    if-eqz v6, :cond_1c

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    .line 30
    .line 31
    goto :goto_10

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_a

    .line 37
    :cond_24
    :goto_24
    return v1

    .line 38
    :goto_25
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public h(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F
    .registers 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p4

    .line 4
    .line 5
    const-string v3, "LEAD"

    .line 6
    .line 7
    const-string v4, "PURCHASE"

    .line 8
    .line 9
    const-string v5, "PAGE_TITLE"

    .line 10
    .line 11
    const-string v6, "BUTTON_TEXT"

    .line 12
    .line 13
    const-string v7, "COMPLETE_REGISTRATION"

    .line 14
    .line 15
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v8, 0x0

    .line 20
    if-eqz v0, :cond_16

    .line 21
    .line 22
    return-object v8

    .line 23
    :cond_16
    const/16 v0, 0x1e

    .line 24
    .line 25
    :try_start_18
    new-array v9, v0, [F

    .line 26
    .line 27
    const/4 v10, 0x0

    .line 28
    move v11, v10

    .line 29
    :goto_1c
    const/4 v12, 0x0

    .line 30
    if-ge v11, v0, :cond_29

    .line 31
    .line 32
    aput v12, v9, v11

    .line 33
    .line 34
    add-int/lit8 v11, v11, 0x1

    .line 35
    .line 36
    goto :goto_1c

    .line 37
    :catchall_24
    move-exception v0

    .line 38
    move-object/from16 v16, v8

    .line 39
    .line 40
    goto/16 :goto_16d

    .line 41
    .line 42
    :cond_29
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v11, 0x1

    .line 47
    const/high16 v13, 0x3f800000    # 1.0f

    .line 48
    .line 49
    if-le v0, v11, :cond_35

    .line 50
    .line 51
    int-to-float v0, v0

    .line 52
    sub-float/2addr v0, v13

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move v0, v12

    .line 55
    :goto_36
    const/4 v14, 0x3

    .line 56
    aput v0, v9, v14
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_24

    .line 57
    .line 58
    :try_start_39
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    :goto_3d
    if-ge v10, v14, :cond_72

    .line 63
    .line 64
    move-object/from16 v15, p2

    .line 65
    .line 66
    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_45} :catch_72
    .catchall {:try_start_39 .. :try_end_45} :catchall_24

    .line 70
    move-object/from16 v16, v8

    .line 71
    .line 72
    :try_start_47
    const-string v8, "siblings.getJSONObject(i)"

    .line 73
    .line 74
    invoke-static {v8, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v8
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_47 .. :try_end_50} :catch_74
    .catchall {:try_start_47 .. :try_end_50} :catchall_66

    .line 81
    if-eqz v8, :cond_53

    .line 82
    .line 83
    goto :goto_6d

    .line 84
    :cond_53
    :try_start_53
    const-string v8, "classtypebitmask"

    .line 85
    .line 86
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_69

    .line 90
    and-int/2addr v0, v11

    .line 91
    shl-int/lit8 v0, v0, 0x5

    .line 92
    .line 93
    if-lez v0, :cond_6d

    .line 94
    .line 95
    const/16 v0, 0x9

    .line 96
    .line 97
    :try_start_60
    aget v8, v9, v0

    .line 98
    .line 99
    add-float/2addr v8, v13

    .line 100
    aput v8, v9, v0

    .line 101
    .line 102
    goto :goto_6d

    .line 103
    :catchall_66
    move-exception v0

    .line 104
    goto/16 :goto_16d

    .line 105
    .line 106
    :catchall_69
    move-exception v0

    .line 107
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_6d} :catch_74
    .catchall {:try_start_60 .. :try_end_6d} :catchall_66

    .line 108
    .line 109
    .line 110
    :cond_6d
    :goto_6d
    add-int/lit8 v10, v10, 0x1

    .line 111
    .line 112
    move-object/from16 v8, v16

    .line 113
    .line 114
    goto :goto_3d

    .line 115
    :catch_72
    :cond_72
    move-object/from16 v16, v8

    .line 116
    .line 117
    :catch_74
    const/16 v0, 0xd

    .line 118
    .line 119
    const/high16 v8, -0x40800000    # -1.0f

    .line 120
    .line 121
    :try_start_78
    aput v8, v9, v0

    .line 122
    .line 123
    const/16 v0, 0xe

    .line 124
    .line 125
    aput v8, v9, v0

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    move-object/from16 v8, p3

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const/16 v8, 0x7c

    .line 138
    .line 139
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    move-object/from16 v8, p5

    .line 143
    .line 144
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v8, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    new-instance v10, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    move-object/from16 v11, p1

    .line 162
    .line 163
    invoke-virtual {v1, v11, v10, v8}, Lo2/a;->o(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    const-string v11, "hintSB.toString()"

    .line 171
    .line 172
    invoke-static {v11, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    const-string v11, "textSB.toString()"

    .line 180
    .line 181
    invoke-static {v11, v10}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v7, v6, v10}, Lo2/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v11

    .line 188
    if-eqz v11, :cond_bf

    .line 189
    .line 190
    move v11, v13

    .line 191
    goto :goto_c0

    .line 192
    :cond_bf
    move v11, v12

    .line 193
    :goto_c0
    const/16 v14, 0xf

    .line 194
    .line 195
    aput v11, v9, v14

    .line 196
    .line 197
    invoke-virtual {v1, v7, v5, v0}, Lo2/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_cc

    .line 202
    .line 203
    move v11, v13

    .line 204
    goto :goto_cd

    .line 205
    :cond_cc
    move v11, v12

    .line 206
    :goto_cd
    const/16 v14, 0x10

    .line 207
    .line 208
    aput v11, v9, v14

    .line 209
    .line 210
    const-string v11, "BUTTON_ID"

    .line 211
    .line 212
    invoke-virtual {v1, v7, v11, v8}, Lo2/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    if-eqz v7, :cond_db

    .line 217
    .line 218
    move v7, v13

    .line 219
    goto :goto_dc

    .line 220
    :cond_db
    move v7, v12

    .line 221
    :goto_dc
    const/16 v8, 0x11

    .line 222
    .line 223
    aput v7, v9, v8

    .line 224
    .line 225
    const-string v7, "password"

    .line 226
    .line 227
    invoke-static {v2, v7}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_ea

    .line 232
    .line 233
    move v7, v13

    .line 234
    goto :goto_eb

    .line 235
    :cond_ea
    move v7, v12

    .line 236
    :goto_eb
    const/16 v8, 0x12

    .line 237
    .line 238
    aput v7, v9, v8

    .line 239
    .line 240
    const-string v7, "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

    .line 241
    .line 242
    invoke-virtual {v1, v7, v2}, Lo2/a;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_f9

    .line 247
    .line 248
    move v7, v13

    .line 249
    goto :goto_fa

    .line 250
    :cond_f9
    move v7, v12

    .line 251
    :goto_fa
    const/16 v8, 0x13

    .line 252
    .line 253
    aput v7, v9, v8

    .line 254
    .line 255
    const-string v7, "(?i)(sign in)|login|signIn"

    .line 256
    .line 257
    invoke-virtual {v1, v7, v2}, Lo2/a;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v7

    .line 261
    if-eqz v7, :cond_108

    .line 262
    .line 263
    move v7, v13

    .line 264
    goto :goto_109

    .line 265
    :cond_108
    move v7, v12

    .line 266
    :goto_109
    const/16 v8, 0x14

    .line 267
    .line 268
    aput v7, v9, v8

    .line 269
    .line 270
    const-string v7, "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

    .line 271
    .line 272
    invoke-virtual {v1, v7, v2}, Lo2/a;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_117

    .line 277
    .line 278
    move v2, v13

    .line 279
    goto :goto_118

    .line 280
    :cond_117
    move v2, v12

    .line 281
    :goto_118
    const/16 v7, 0x15

    .line 282
    .line 283
    aput v2, v9, v7

    .line 284
    .line 285
    invoke-virtual {v1, v4, v6, v10}, Lo2/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    if-eqz v2, :cond_124

    .line 290
    .line 291
    move v2, v13

    .line 292
    goto :goto_125

    .line 293
    :cond_124
    move v2, v12

    .line 294
    :goto_125
    const/16 v7, 0x16

    .line 295
    .line 296
    aput v2, v9, v7

    .line 297
    .line 298
    invoke-virtual {v1, v4, v5, v0}, Lo2/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_131

    .line 303
    .line 304
    move v2, v13

    .line 305
    goto :goto_132

    .line 306
    :cond_131
    move v2, v12

    .line 307
    :goto_132
    const/16 v4, 0x18

    .line 308
    .line 309
    aput v2, v9, v4

    .line 310
    .line 311
    const-string v2, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

    .line 312
    .line 313
    invoke-virtual {v1, v2, v10}, Lo2/a;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_140

    .line 318
    .line 319
    move v2, v13

    .line 320
    goto :goto_141

    .line 321
    :cond_140
    move v2, v12

    .line 322
    :goto_141
    const/16 v4, 0x19

    .line 323
    .line 324
    aput v2, v9, v4

    .line 325
    .line 326
    const-string v2, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

    .line 327
    .line 328
    invoke-virtual {v1, v2, v0}, Lo2/a;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_14f

    .line 333
    .line 334
    move v2, v13

    .line 335
    goto :goto_150

    .line 336
    :cond_14f
    move v2, v12

    .line 337
    :goto_150
    const/16 v4, 0x1b

    .line 338
    .line 339
    aput v2, v9, v4

    .line 340
    .line 341
    invoke-virtual {v1, v3, v6, v10}, Lo2/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_15c

    .line 346
    .line 347
    move v2, v13

    .line 348
    goto :goto_15d

    .line 349
    :cond_15c
    move v2, v12

    .line 350
    :goto_15d
    const/16 v4, 0x1c

    .line 351
    .line 352
    aput v2, v9, v4

    .line 353
    .line 354
    invoke-virtual {v1, v3, v5, v0}, Lo2/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-eqz v0, :cond_168

    .line 359
    .line 360
    move v12, v13

    .line 361
    :cond_168
    const/16 v0, 0x1d

    .line 362
    .line 363
    aput v12, v9, v0
    :try_end_16c
    .catchall {:try_start_78 .. :try_end_16c} :catchall_66

    .line 364
    .line 365
    return-object v9

    .line 366
    :goto_16d
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    return-object v16
.end method

.method public i(Lorg/json/JSONObject;)[F
    .registers 13

    .line 1
    const-string v0, "this as java.lang.String).toLowerCase()"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_a
    const/16 v1, 0x1e

    .line 12
    .line 13
    :try_start_c
    new-array v3, v1, [F

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_10
    if-ge v5, v1, :cond_1b

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    aput v6, v3, v5

    .line 21
    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    goto :goto_10

    .line 25
    :catchall_18
    move-exception p1

    .line 26
    goto/16 :goto_13c

    .line 27
    .line 28
    :cond_1b
    const-string v1, "text"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v5, "node.optString(TEXT_KEY)"

    .line 35
    .line 36
    invoke-static {v5, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const-string v5, "hint"

    .line 47
    .line 48
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "node.optString(HINT_KEY)"

    .line 53
    .line 54
    invoke-static {v6, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v0, v5}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const-string v6, "classname"

    .line 65
    .line 66
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "node.optString(CLASS_NAME_KEY)"

    .line 71
    .line 72
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-static {v0, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "inputtype"

    .line 83
    .line 84
    const/4 v7, -0x1

    .line 85
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v7, "$"

    .line 94
    .line 95
    const-string v8, "amount"

    .line 96
    .line 97
    const-string v9, "price"

    .line 98
    .line 99
    const-string v10, "total"

    .line 100
    .line 101
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {p0, v7, v5}, Lo2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/high16 v8, 0x3f800000    # 1.0f

    .line 110
    .line 111
    if-eqz v7, :cond_75

    .line 112
    .line 113
    aget v7, v3, v4

    .line 114
    .line 115
    add-float/2addr v7, v8

    .line 116
    aput v7, v3, v4

    .line 117
    .line 118
    :cond_75
    const-string v7, "password"

    .line 119
    .line 120
    const-string v9, "pwd"

    .line 121
    .line 122
    filled-new-array {v7, v9}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {p0, v7, v5}, Lo2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_89

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    aget v9, v3, v7

    .line 134
    .line 135
    add-float/2addr v9, v8

    .line 136
    aput v9, v3, v7

    .line 137
    .line 138
    :cond_89
    const-string v7, "tel"

    .line 139
    .line 140
    const-string v9, "phone"

    .line 141
    .line 142
    filled-new-array {v7, v9}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-virtual {p0, v7, v5}, Lo2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    const/4 v9, 0x2

    .line 151
    if-eqz v7, :cond_9d

    .line 152
    .line 153
    aget v7, v3, v9

    .line 154
    .line 155
    add-float/2addr v7, v8

    .line 156
    aput v7, v3, v9

    .line 157
    .line 158
    :cond_9d
    const-string v7, "search"

    .line 159
    .line 160
    filled-new-array {v7}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-virtual {p0, v7, v5}, Lo2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_af

    .line 169
    .line 170
    const/4 v5, 0x4

    .line 171
    aget v7, v3, v5

    .line 172
    .line 173
    add-float/2addr v7, v8

    .line 174
    aput v7, v3, v5

    .line 175
    .line 176
    :cond_af
    if-ltz v0, :cond_b7

    .line 177
    .line 178
    const/4 v5, 0x5

    .line 179
    aget v7, v3, v5

    .line 180
    .line 181
    add-float/2addr v7, v8

    .line 182
    aput v7, v3, v5

    .line 183
    .line 184
    :cond_b7
    if-eq v0, v9, :cond_bd

    .line 185
    .line 186
    const/4 v5, 0x3

    .line 187
    if-eq v0, v5, :cond_bd

    .line 188
    .line 189
    goto :goto_c3

    .line 190
    :cond_bd
    const/4 v5, 0x6

    .line 191
    aget v7, v3, v5

    .line 192
    .line 193
    add-float/2addr v7, v8

    .line 194
    aput v7, v3, v5

    .line 195
    .line 196
    :goto_c3
    const/16 v5, 0x20

    .line 197
    .line 198
    if-eq v0, v5, :cond_d3

    .line 199
    .line 200
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_d9

    .line 211
    .line 212
    :cond_d3
    const/4 v0, 0x7

    .line 213
    aget v5, v3, v0

    .line 214
    .line 215
    add-float/2addr v5, v8

    .line 216
    aput v5, v3, v0

    .line 217
    .line 218
    :cond_d9
    const-string v0, "checkbox"

    .line 219
    .line 220
    invoke-static {v6, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_e8

    .line 225
    .line 226
    const/16 v0, 0x8

    .line 227
    .line 228
    aget v5, v3, v0

    .line 229
    .line 230
    add-float/2addr v5, v8

    .line 231
    aput v5, v3, v0

    .line 232
    .line 233
    :cond_e8
    const-string v0, "complete"

    .line 234
    .line 235
    const-string v5, "confirm"

    .line 236
    .line 237
    const-string v7, "done"

    .line 238
    .line 239
    const-string v9, "submit"

    .line 240
    .line 241
    filled-new-array {v0, v5, v7, v9}, [Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    filled-new-array {v1}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {p0, v0, v1}, Lo2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_105

    .line 254
    .line 255
    const/16 v0, 0xa

    .line 256
    .line 257
    aget v1, v3, v0

    .line 258
    .line 259
    add-float/2addr v1, v8

    .line 260
    aput v1, v3, v0

    .line 261
    .line 262
    :cond_105
    const-string v0, "radio"

    .line 263
    .line 264
    invoke-static {v6, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_11c

    .line 269
    .line 270
    const-string v0, "button"

    .line 271
    .line 272
    invoke-static {v6, v0}, Lk7/g;->x(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_11c

    .line 277
    .line 278
    const/16 v0, 0xc

    .line 279
    .line 280
    aget v1, v3, v0

    .line 281
    .line 282
    add-float/2addr v1, v8

    .line 283
    aput v1, v3, v0
    :try_end_11c
    .catchall {:try_start_c .. :try_end_11c} :catchall_18

    .line 284
    .line 285
    :cond_11c
    :try_start_11c
    const-string v0, "childviews"

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    :goto_126
    if-ge v4, v0, :cond_13b

    .line 296
    .line 297
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const-string v5, "childViews.getJSONObject(i)"

    .line 302
    .line 303
    invoke-static {v5, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v1}, Lo2/a;->i(Lorg/json/JSONObject;)[F

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {p0, v3, v1}, Lo2/a;->n([F[F)V
    :try_end_138
    .catch Lorg/json/JSONException; {:try_start_11c .. :try_end_138} :catch_13b
    .catchall {:try_start_11c .. :try_end_138} :catchall_18

    .line 311
    .line 312
    .line 313
    add-int/lit8 v4, v4, 0x1

    .line 314
    .line 315
    goto :goto_126

    .line 316
    :catch_13b
    :cond_13b
    return-object v3

    .line 317
    :goto_13c
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    return-object v2
.end method

.method public k(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .registers 13

    .line 1
    const-string v0, "childviews"

    .line 2
    .line 3
    const-string v1, "is_interacted"

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_d

    .line 11
    .line 12
    goto/16 :goto_71

    .line 13
    .line 14
    :cond_d
    :try_start_d
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v2, :cond_15

    .line 20
    .line 21
    return v4

    .line 22
    :cond_15
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    move v6, v3

    .line 31
    :goto_1e
    if-ge v6, v5, :cond_32

    .line 32
    .line 33
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_2d

    .line 42
    .line 43
    move v1, v4

    .line 44
    :goto_2b
    move v5, v1

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_1e

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    goto :goto_6e

    .line 51
    :cond_32
    move v1, v3

    .line 52
    goto :goto_2b

    .line 53
    :goto_34
    new-instance v6, Lorg/json/JSONArray;

    .line 54
    .line 55
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 56
    .line 57
    .line 58
    if-eqz v1, :cond_4d

    .line 59
    .line 60
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    move v0, v3

    .line 65
    :goto_40
    if-ge v0, p1, :cond_4c

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_40

    .line 77
    :cond_4c
    return v5

    .line 78
    :cond_4d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    move v7, v3

    .line 83
    :goto_52
    if-ge v7, v1, :cond_6a

    .line 84
    .line 85
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    const-string v9, "child"

    .line 90
    .line 91
    invoke-static {v9, v8}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v8, p2}, Lo2/a;->k(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_67

    .line 99
    .line 100
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 101
    .line 102
    .line 103
    move v5, v4

    .line 104
    :cond_67
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    goto :goto_52

    .line 107
    :cond_6a
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_6d} :catch_71
    .catchall {:try_start_d .. :try_end_6d} :catchall_30

    .line 108
    .line 109
    .line 110
    return v5

    .line 111
    :goto_6e
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :catch_71
    :goto_71
    return v3
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    :try_start_8
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    .line 21
    return p1

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 1
    const-string v0, "ENGLISH"

    .line 2
    .line 3
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 9
    .line 10
    goto :goto_6c

    .line 11
    :cond_a
    :try_start_a
    sget-object v1, Lo2/a;->e:Lorg/json/JSONObject;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_72

    .line 15
    .line 16
    const-string v4, "rulesForLanguage"

    .line 17
    .line 18
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_6a

    .line 23
    .line 24
    sget-object v4, Lo2/a;->b:Ljava/lang/Object;

    .line 25
    .line 26
    if-eqz v4, :cond_64

    .line 27
    .line 28
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_6a

    .line 39
    .line 40
    const-string v1, "rulesForEvent"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_6a

    .line 47
    .line 48
    sget-object v1, Lo2/a;->c:Ljava/lang/Object;

    .line 49
    .line 50
    if-eqz v1, :cond_5e

    .line 51
    .line 52
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_6a

    .line 63
    .line 64
    const-string v0, "positiveRules"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_6a

    .line 71
    .line 72
    sget-object v0, Lo2/a;->d:Ljava/lang/Object;

    .line 73
    .line 74
    if-eqz v0, :cond_58

    .line 75
    .line 76
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    goto :goto_6a

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    goto :goto_78

    .line 89
    :cond_58
    const-string p1, "textTypeInfo"

    .line 90
    .line 91
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v3

    .line 95
    :cond_5e
    const-string p1, "eventInfo"

    .line 96
    .line 97
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v3

    .line 101
    :cond_64
    const-string p1, "languageInfo"

    .line 102
    .line 103
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v3

    .line 107
    :cond_6a
    :goto_6a
    if-nez v3, :cond_6d

    .line 108
    .line 109
    :goto_6c
    return v2

    .line 110
    :cond_6d
    invoke-virtual {p0, v3, p3}, Lo2/a;->l(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    return p1

    .line 115
    :cond_72
    const-string p1, "rules"

    .line 116
    .line 117
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw v3
    :try_end_78
    .catchall {:try_start_a .. :try_end_78} :catchall_56

    .line 121
    :goto_78
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return v2
.end method

.method public n([F[F)V
    .registers 7

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_17

    .line 8
    :cond_7
    :try_start_7
    array-length v0, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_17

    .line 11
    .line 12
    aget v2, p1, v1

    .line 13
    .line 14
    aget v3, p2, v1

    .line 15
    .line 16
    add-float/2addr v2, v3

    .line 17
    aput v2, p1, v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_15

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_9

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    return-void

    .line 25
    :goto_18
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public o(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 8

    .line 1
    const-string v0, "this as java.lang.String).toLowerCase()"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_b

    .line 10
    .line 11
    goto :goto_6b

    .line 12
    :cond_b
    :try_start_b
    const-string v2, "text"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "view.optString(TEXT_KEY, \"\")"

    .line 19
    .line 20
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "hint"

    .line 31
    .line 32
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "view.optString(HINT_KEY, \"\")"

    .line 37
    .line 38
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_3e

    .line 52
    const-string v3, " "

    .line 53
    .line 54
    if-lez v0, :cond_40

    .line 55
    .line 56
    :try_start_37
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_40

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    goto :goto_6c

    .line 65
    :cond_40
    :goto_40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_4c

    .line 70
    .line 71
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_4c
    const-string v0, "childviews"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_55

    .line 84
    .line 85
    goto :goto_6b

    .line 86
    :cond_55
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_59
    .catchall {:try_start_37 .. :try_end_59} :catchall_3e

    .line 90
    const/4 v1, 0x0

    .line 91
    :goto_5a
    if-ge v1, v0, :cond_6b

    .line 92
    .line 93
    :try_start_5c
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v3, "currentChildView"

    .line 98
    .line 99
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v2, p2, p3}, Lo2/a;->o(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_68} :catch_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_3e

    .line 103
    .line 104
    .line 105
    :catch_68
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_5a

    .line 108
    :cond_6b
    :goto_6b
    return-void

    .line 109
    :goto_6c
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
