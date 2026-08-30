###### Class t2.b (t2.b)
.class public final synthetic Lt2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/v;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 3

    .line 1
    iput p2, p0, Lt2/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lt2/b;->b:Ljava/util/List;

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
    iget v0, p0, Lt2/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_6a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt2/b;->b:Ljava/util/List;

    .line 7
    .line 8
    :try_start_7
    iget-object v1, p1, Lx1/c0;->c:Lx1/o;

    .line 9
    .line 10
    if-nez v1, :cond_30

    .line 11
    .line 12
    iget-object p1, p1, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 13
    .line 14
    if-eqz p1, :cond_30

    .line 15
    .line 16
    const-string v1, "success"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_30

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_30

    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ls2/d;

    .line 42
    .line 43
    iget-object v0, v0, Ls2/d;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Landroid/support/v4/media/session/a;->c(Ljava/lang/String;)V
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_2f} :catch_30

    .line 46
    .line 47
    .line 48
    goto :goto_1e

    .line 49
    :catch_30
    :cond_30
    return-void

    .line 50
    :pswitch_31
    iget-object v0, p0, Lt2/b;->b:Ljava/util/List;

    .line 51
    .line 52
    const-class v1, Lt2/c;

    .line 53
    .line 54
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3c

    .line 59
    .line 60
    goto :goto_69

    .line 61
    :cond_3c
    :try_start_3c
    iget-object v2, p1, Lx1/c0;->c:Lx1/o;

    .line 62
    .line 63
    if-nez v2, :cond_69

    .line 64
    .line 65
    iget-object p1, p1, Lx1/c0;->d:Lorg/json/JSONObject;

    .line 66
    .line 67
    if-eqz p1, :cond_69

    .line 68
    .line 69
    const-string v2, "success"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 v2, 0x1

    .line 76
    if-ne p1, v2, :cond_69

    .line 77
    .line 78
    check-cast v0, Ljava/lang/Iterable;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_69

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ls2/d;

    .line 95
    .line 96
    iget-object v0, v0, Ls2/d;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/support/v4/media/session/a;->c(Ljava/lang/String;)V
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_64} :catch_69
    .catchall {:try_start_3c .. :try_end_64} :catchall_65

    .line 99
    .line 100
    .line 101
    goto :goto_53

    .line 102
    :catchall_65
    move-exception p1

    .line 103
    invoke-static {p1, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :catch_69
    :cond_69
    :goto_69
    return-void

    .line 107
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method
