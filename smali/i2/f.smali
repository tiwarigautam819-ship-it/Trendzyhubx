###### Class i2.f (i2.f)
.class public final synthetic Li2/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;I)V
    .registers 4

    .line 1
    iput p3, p0, Li2/f;->a:I

    iput p1, p0, Li2/f;->b:I

    iput-object p2, p0, Li2/f;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/WindowInsetsController;I)V
    .registers 4

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Li2/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/f;->c:Ljava/lang/Object;

    iput p2, p0, Li2/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Li2/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_62

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li2/f;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/view/WindowInsetsController;

    .line 9
    .line 10
    iget v1, p0, Li2/f;->b:I

    .line 11
    .line 12
    :try_start_b
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/a;->l(Landroid/view/WindowInsetsController;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/a;->m(Landroid/view/WindowInsetsController;I)V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_11

    .line 16
    .line 17
    .line 18
    :catchall_11
    return-void

    .line 19
    :pswitch_12
    iget v0, p0, Li2/f;->b:I

    .line 20
    .line 21
    iget-object v1, p0, Li2/f;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroid/content/Context;

    .line 24
    .line 25
    const-class v2, Li2/g;

    .line 26
    .line 27
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_21

    .line 32
    .line 33
    goto :goto_39

    .line 34
    :cond_21
    :try_start_21
    const-string v3, "$billingClientVersion"

    .line 35
    .line 36
    invoke-static {v0, v3}, La1/a;->n(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Li2/g;->a:Li2/g;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v4, "context.packageName"

    .line 46
    .line 47
    invoke-static {v4, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v0, v1}, Li2/g;->a(ILjava/lang/String;)V
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_35

    .line 51
    .line 52
    .line 53
    goto :goto_39

    .line 54
    :catchall_35
    move-exception v0

    .line 55
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_39
    return-void

    .line 59
    :pswitch_3a
    iget v0, p0, Li2/f;->b:I

    .line 60
    .line 61
    iget-object v1, p0, Li2/f;->c:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v1, Landroid/content/Context;

    .line 64
    .line 65
    const-class v2, Li2/g;

    .line 66
    .line 67
    invoke-static {v2}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_49

    .line 72
    .line 73
    goto :goto_61

    .line 74
    :cond_49
    :try_start_49
    const-string v3, "$billingClientVersion"

    .line 75
    .line 76
    invoke-static {v0, v3}, La1/a;->n(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Li2/g;->a:Li2/g;

    .line 80
    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v4, "context.packageName"

    .line 86
    .line 87
    invoke-static {v4, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v0, v1}, Li2/g;->a(ILjava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_5d

    .line 91
    .line 92
    .line 93
    goto :goto_61

    .line 94
    :catchall_5d
    move-exception v0

    .line 95
    invoke-static {v0, v2}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_61
    return-void

    .line 99
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_12
    .end packed-switch
.end method
