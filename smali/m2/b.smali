###### Class m2.b (m2.b)
.class public final Lm2/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lm2/b;

.field public static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lm2/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm2/b;->a:Lm2/b;

    .line 7
    .line 8
    const-string v0, "StartTrial"

    .line 9
    .line 10
    const-string v1, "Subscribe"

    .line 11
    .line 12
    const-string v2, "fb_mobile_purchase"

    .line 13
    .line 14
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Li2/t;->p([Ljava/lang/Object;)Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lm2/b;->b:Ljava/util/Set;

    .line 23
    .line 24
    return-void
.end method

.method public static final a()Z
    .registers 6

    .line 1
    sget-object v0, Lm2/e;->a:Lm2/e;

    .line 2
    .line 3
    const-class v1, Lm2/b;

    .line 4
    .line 5
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_c

    .line 11
    .line 12
    return v3

    .line 13
    :cond_c
    :try_start_c
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lx1/r;->f(Landroid/content/Context;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_54

    .line 22
    .line 23
    invoke-static {}, Lq2/g0;->z()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_54

    .line 28
    .line 29
    const-class v2, Lm2/e;

    .line 30
    .line 31
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_52

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v4, :cond_27

    .line 37
    .line 38
    :cond_25
    :goto_25
    move v0, v3

    .line 39
    goto :goto_4e

    .line 40
    :cond_27
    :try_start_27
    sget-object v4, Lm2/e;->b:Ljava/lang/Boolean;

    .line 41
    .line 42
    if-nez v4, :cond_41

    .line 43
    .line 44
    invoke-static {}, Lx1/r;->a()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v4}, Lm2/e;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_37

    .line 53
    .line 54
    move v0, v5

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move v0, v3

    .line 57
    :goto_38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lm2/e;->b:Ljava/lang/Boolean;

    .line 62
    .line 63
    goto :goto_41

    .line 64
    :catchall_3f
    move-exception v0

    .line 65
    goto :goto_4a

    .line 66
    :cond_41
    :goto_41
    sget-object v0, Lm2/e;->b:Ljava/lang/Boolean;

    .line 67
    .line 68
    if-eqz v0, :cond_25

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v0
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_3f

    .line 74
    goto :goto_4e

    .line 75
    :goto_4a
    :try_start_4a
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_52

    .line 76
    .line 77
    .line 78
    goto :goto_25

    .line 79
    :goto_4e
    if-eqz v0, :cond_54

    .line 80
    .line 81
    move v3, v5

    .line 82
    goto :goto_54

    .line 83
    :catchall_52
    move-exception v0

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    :goto_54
    return v3

    .line 86
    :goto_55
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return v3
.end method
