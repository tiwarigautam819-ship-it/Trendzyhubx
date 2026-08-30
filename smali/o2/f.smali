###### Class o2.f (o2.f)
.class public final Lo2/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final e:Ljava/util/HashSet;


# instance fields
.field public final a:Landroid/view/View$OnClickListener;

.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Ljava/lang/ref/WeakReference;

.field public final d:Ljava/lang/String;


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
    sput-object v0, Lo2/f;->e:Ljava/util/HashSet;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lc2/e;->e(Landroid/view/View;)Landroid/view/View$OnClickListener;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lo2/f;->a:Landroid/view/View$OnClickListener;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lo2/f;->b:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lo2/f;->c:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "this as java.lang.String).toLowerCase()"

    .line 29
    .line 30
    invoke-static {p2, p1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const-string p2, "activity"

    .line 34
    .line 35
    const-string p3, ""

    .line 36
    .line 37
    invoke-static {p1, p2, p3}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lo2/f;->d:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a()V
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
    goto :goto_5a

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lo2/f;->b:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    .line 16
    iget-object v1, p0, Lo2/f;->c:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/view/View;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_58

    .line 23
    .line 24
    if-eqz v0, :cond_5a

    .line 25
    .line 26
    if-nez v1, :cond_1c

    .line 27
    .line 28
    goto :goto_5a

    .line 29
    :cond_1c
    :try_start_1c
    invoke-static {v1}, Lo2/c;->d(Landroid/view/View;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lo2/b;->b(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-nez v3, :cond_27

    .line 38
    .line 39
    goto :goto_5a

    .line 40
    :cond_27
    invoke-static {v3, v2}, Lo2/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_2e

    .line 45
    .line 46
    goto :goto_5a

    .line 47
    :cond_2e
    new-instance v4, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "view"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lo2/c;->b(Landroid/view/View;Landroid/view/View;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string v0, "screenname"

    .line 62
    .line 63
    iget-object v1, p0, Lo2/f;->d:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_47} :catch_5a
    .catchall {:try_start_1c .. :try_end_47} :catchall_58

    .line 72
    if-eqz v0, :cond_4a

    .line 73
    .line 74
    goto :goto_5a

    .line 75
    :cond_4a
    :try_start_4a
    new-instance v0, Lcom/getcapacitor/b;

    .line 76
    .line 77
    invoke-direct {v0, v4, v2, p0, v3}, Lcom/getcapacitor/b;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lo2/f;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Lq2/g0;->K(Ljava/lang/Runnable;)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_53

    .line 81
    .line 82
    .line 83
    goto :goto_5a

    .line 84
    :catchall_53
    move-exception v0

    .line 85
    :try_start_54
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_5a
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 86
    .line 87
    .line 88
    goto :goto_5a

    .line 89
    :catchall_58
    move-exception v0

    .line 90
    goto :goto_5b

    .line 91
    :catch_5a
    :cond_5a
    :goto_5a
    return-void

    .line 92
    :goto_5b
    invoke-static {v0, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 3

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
    return-void

    .line 8
    :cond_7
    :try_start_7
    const-string v0, "view"

    .line 9
    .line 10
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lo2/f;->a:Landroid/view/View$OnClickListener;

    .line 14
    .line 15
    if-eqz v0, :cond_16

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    goto :goto_16

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lo2/f;->a()V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_14

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
