###### Class s2.d (s2.d)
.class public final Ls2/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ls2/b;

.field public c:Lorg/json/JSONArray;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Long;


# virtual methods
.method public final a()Z
    .registers 7

    .line 1
    iget-object v0, p0, Ls2/d;->f:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ls2/d;->g:Ljava/lang/Long;

    .line 4
    .line 5
    iget-object v2, p0, Ls2/d;->b:Ls2/b;

    .line 6
    .line 7
    if-nez v2, :cond_a

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    goto :goto_12

    .line 11
    :cond_a
    sget-object v3, Ls2/c;->a:[I

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aget v2, v3, v2

    .line 18
    .line 19
    :goto_12
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v2, v4, :cond_33

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-eq v2, v5, :cond_29

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    if-eq v2, v5, :cond_23

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    if-eq v2, v5, :cond_23

    .line 31
    .line 32
    const/4 v5, 0x5

    .line 33
    if-eq v2, v5, :cond_23

    .line 34
    .line 35
    return v3

    .line 36
    :cond_23
    if-eqz v0, :cond_28

    .line 37
    .line 38
    if-eqz v1, :cond_28

    .line 39
    .line 40
    return v4

    .line 41
    :cond_28
    return v3

    .line 42
    :cond_29
    if-eqz v0, :cond_32

    .line 43
    .line 44
    iget-object v0, p0, Ls2/d;->e:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v0, :cond_32

    .line 47
    .line 48
    if-eqz v1, :cond_32

    .line 49
    .line 50
    return v4

    .line 51
    :cond_32
    return v3

    .line 52
    :cond_33
    iget-object v0, p0, Ls2/d;->c:Lorg/json/JSONArray;

    .line 53
    .line 54
    if-eqz v0, :cond_3a

    .line 55
    .line 56
    if-eqz v1, :cond_3a

    .line 57
    .line 58
    return v4

    .line 59
    :cond_3a
    return v3
.end method

.method public final b()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ls2/d;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Ls2/d;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Ls2/d;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Ls2/d;->g:Ljava/lang/Long;

    .line 2
    .line 3
    iget-object v1, p0, Ls2/d;->b:Ls2/b;

    .line 4
    .line 5
    if-nez v1, :cond_8

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    sget-object v2, Ls2/c;->a:[I

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    aget v2, v2, v3

    .line 16
    .line 17
    :goto_10
    const/4 v3, 0x1

    .line 18
    const-string v4, "timestamp"

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    if-eq v2, v3, :cond_5f

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    if-eq v2, v3, :cond_23

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    if-eq v2, v3, :cond_23

    .line 28
    .line 29
    const/4 v3, 0x4

    .line 30
    if-eq v2, v3, :cond_23

    .line 31
    .line 32
    const/4 v3, 0x5

    .line 33
    if-eq v2, v3, :cond_23

    .line 34
    .line 35
    goto :goto_73

    .line 36
    :cond_23
    new-instance v2, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .line 40
    .line 41
    :try_start_28
    const-string v3, "device_os_version"

    .line 42
    .line 43
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v3, "device_model"

    .line 49
    .line 50
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Ls2/d;->d:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v3, :cond_3f

    .line 58
    .line 59
    const-string v6, "app_version"

    .line 60
    .line 61
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    :cond_3f
    if-eqz v0, :cond_44

    .line 65
    .line 66
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    :cond_44
    iget-object v0, p0, Ls2/d;->e:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v0, :cond_4d

    .line 72
    .line 73
    const-string v3, "reason"

    .line 74
    .line 75
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    :cond_4d
    iget-object v0, p0, Ls2/d;->f:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz v0, :cond_56

    .line 81
    .line 82
    const-string v3, "callstack"

    .line 83
    .line 84
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    :cond_56
    if-eqz v1, :cond_5d

    .line 88
    .line 89
    const-string v0, "type"

    .line 90
    .line 91
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_5d} :catch_73

    .line 92
    .line 93
    .line 94
    :cond_5d
    move-object v5, v2

    .line 95
    goto :goto_73

    .line 96
    :cond_5f
    new-instance v1, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 99
    .line 100
    .line 101
    :try_start_64
    iget-object v2, p0, Ls2/d;->c:Lorg/json/JSONArray;

    .line 102
    .line 103
    if-eqz v2, :cond_6d

    .line 104
    .line 105
    const-string v3, "feature_names"

    .line 106
    .line 107
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    :cond_6d
    if-eqz v0, :cond_72

    .line 111
    .line 112
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_72} :catch_73

    .line 113
    .line 114
    .line 115
    :cond_72
    move-object v5, v1

    .line 116
    :catch_73
    :goto_73
    if-nez v5, :cond_84

    .line 117
    .line 118
    new-instance v0, Lorg/json/JSONObject;

    .line 119
    .line 120
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "JSONObject().toString()"

    .line 128
    .line 129
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_84
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "params.toString()"

    .line 138
    .line 139
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object v0
.end method
