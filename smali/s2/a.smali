###### Class s2.a (s2.a)
.class public final synthetic Ls2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/v;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Ls2/a;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ls2/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lx1/c0;)V
    .registers 5

    .line 1
    iget v0, p0, Ls2/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_82

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls2/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/messaging/s;

    .line 9
    .line 10
    iget-object p1, p1, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 11
    .line 12
    if-nez p1, :cond_e

    .line 13
    .line 14
    goto :goto_3b

    .line 15
    :cond_e
    const-string v1, "access_token"

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/google/firebase/messaging/s;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "expires_at"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lcom/google/firebase/messaging/s;->b:I

    .line 30
    .line 31
    const-string v1, "expires_in"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    iput v1, v0, Lcom/google/firebase/messaging/s;->c:I

    .line 38
    .line 39
    const-string v1, "data_access_expiration_time"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/google/firebase/messaging/s;->e:Ljava/lang/Object;

    .line 50
    .line 51
    const-string v1, "graph_domain"

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, v0, Lcom/google/firebase/messaging/s;->d:Ljava/lang/String;

    .line 59
    .line 60
    :goto_3b
    return-void

    .line 61
    :pswitch_3c
    iget-object v0, p0, Ls2/a;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/util/ArrayList;

    .line 64
    .line 65
    :try_start_40
    iget-object v1, p1, Lx1/c0;->c:Lx1/o;

    .line 66
    .line 67
    if-nez v1, :cond_66

    .line 68
    .line 69
    iget-object p1, p1, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 70
    .line 71
    if-eqz p1, :cond_66

    .line 72
    .line 73
    const-string v1, "success"

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/4 v1, 0x1

    .line 80
    if-ne p1, v1, :cond_66

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/4 v1, 0x0

    .line 87
    :goto_56
    if-ge v1, p1, :cond_66

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    check-cast v2, Lw2/a;

    .line 96
    .line 97
    iget-object v2, v2, Lw2/a;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2}, Landroid/support/v4/media/session/a;->c(Ljava/lang/String;)V
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_65} :catch_66

    .line 100
    .line 101
    .line 102
    goto :goto_56

    .line 103
    :catch_66
    :cond_66
    return-void

    .line 104
    :pswitch_67
    iget-object v0, p0, Ls2/a;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, Ls2/d;

    .line 107
    .line 108
    :try_start_6b
    iget-object v1, p1, Lx1/c0;->c:Lx1/o;

    .line 109
    .line 110
    if-nez v1, :cond_81

    .line 111
    .line 112
    iget-object p1, p1, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 113
    .line 114
    if-eqz p1, :cond_81

    .line 115
    .line 116
    const-string v1, "success"

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    const/4 v1, 0x1

    .line 123
    if-ne p1, v1, :cond_81

    .line 124
    .line 125
    iget-object p1, v0, Ls2/d;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p1}, Landroid/support/v4/media/session/a;->c(Ljava/lang/String;)V
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_6b .. :try_end_81} :catch_81

    .line 128
    .line 129
    .line 130
    :catch_81
    :cond_81
    return-void

    .line 131
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_67
        :pswitch_3c
    .end packed-switch
.end method
