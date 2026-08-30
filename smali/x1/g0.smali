###### Class x1.g0 (x1.g0)
.class public final Lx1/g0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final d:Lx1/w;

.field public static volatile e:Lx1/g0;


# instance fields
.field public final a:Ly0/b;

.field public final b:Lx1/b;

.field public c:Lx1/f0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lx1/w;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lx1/w;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lx1/g0;->d:Lx1/w;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ly0/b;Lx1/b;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx1/g0;->a:Ly0/b;

    .line 5
    .line 6
    iput-object p2, p0, Lx1/g0;->b:Lx1/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lx1/f0;Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lx1/g0;->b:Lx1/b;

    .line 2
    .line 3
    iget-object v0, v0, Lx1/b;->a:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object v1, p0, Lx1/g0;->c:Lx1/f0;

    .line 6
    .line 7
    iput-object p1, p0, Lx1/g0;->c:Lx1/f0;

    .line 8
    .line 9
    if-eqz p2, :cond_6f

    .line 10
    .line 11
    const-string p2, "com.facebook.ProfileManager.CachedProfile"

    .line 12
    .line 13
    if-eqz p1, :cond_64

    .line 14
    .line 15
    new-instance v2, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_13
    const-string v3, "id"

    .line 21
    .line 22
    iget-object v4, p1, Lx1/f0;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v3, "first_name"

    .line 28
    .line 29
    iget-object v4, p1, Lx1/f0;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    const-string v3, "middle_name"

    .line 35
    .line 36
    iget-object v4, p1, Lx1/f0;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v3, "last_name"

    .line 42
    .line 43
    iget-object v4, p1, Lx1/f0;->d:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    const-string v3, "name"

    .line 49
    .line 50
    iget-object v4, p1, Lx1/f0;->e:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    iget-object v3, p1, Lx1/f0;->f:Landroid/net/Uri;

    .line 56
    .line 57
    if-eqz v3, :cond_43

    .line 58
    .line 59
    const-string v4, "link_uri"

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    :cond_43
    iget-object v3, p1, Lx1/f0;->g:Landroid/net/Uri;

    .line 69
    .line 70
    if-eqz v3, :cond_52

    .line 71
    .line 72
    const-string v4, "picture_uri"

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_50} :catch_51

    .line 79
    .line 80
    .line 81
    goto :goto_52

    .line 82
    :catch_51
    const/4 v2, 0x0

    .line 83
    :cond_52
    :goto_52
    if-eqz v2, :cond_6f

    .line 84
    .line 85
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    .line 99
    .line 100
    goto :goto_6f

    .line 101
    :cond_64
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    .line 111
    .line 112
    :cond_6f
    :goto_6f
    if-nez v1, :cond_77

    .line 113
    .line 114
    if-nez p1, :cond_75

    .line 115
    .line 116
    const/4 p2, 0x1

    .line 117
    goto :goto_7b

    .line 118
    :cond_75
    const/4 p2, 0x0

    .line 119
    goto :goto_7b

    .line 120
    :cond_77
    invoke-virtual {v1, p1}, Lx1/f0;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    :goto_7b
    if-nez p2, :cond_93

    .line 125
    .line 126
    new-instance p2, Landroid/content/Intent;

    .line 127
    .line 128
    const-string v0, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    .line 129
    .line 130
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v0, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    .line 134
    .line 135
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    const-string v0, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    .line 139
    .line 140
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lx1/g0;->a:Ly0/b;

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ly0/b;->c(Landroid/content/Intent;)V

    .line 146
    .line 147
    .line 148
    :cond_93
    return-void
.end method
