###### Class l6.g (l6.g)
.class public final synthetic Ll6/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/lottery/app/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/lottery/app/MainActivity;I)V
    .registers 3

    .line 1
    iput p2, p0, Ll6/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll6/g;->b:Lcom/lottery/app/MainActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Ll6/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "MainActivity"

    .line 5
    .line 6
    iget-object v3, p0, Ll6/g;->b:Lcom/lottery/app/MainActivity;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_7c

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/lottery/app/MainActivity;->g:I

    .line 12
    .line 13
    iget-object v0, v3, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v0, :cond_1b

    .line 22
    .line 23
    iget-object v1, v3, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    iput-object v0, v3, Lcom/lottery/app/MainActivity;->b:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1, v1, v1}, Lf4/f;->a(Landroid/view/Window;ZZZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/high16 v2, 0xc000000

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/high16 v2, -0x80000000

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/high16 v2, -0x1000000

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0, v1}, Lt4/b;->k(Landroid/view/Window;Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_5b
    sget v0, Lcom/lottery/app/MainActivity;->g:I

    .line 93
    .line 94
    const-string v0, "2222 splash max wait reached"

    .line 95
    .line 96
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-boolean v0, v3, Lcom/lottery/app/MainActivity;->e:Z

    .line 100
    .line 101
    if-nez v0, :cond_6b

    .line 102
    .line 103
    iput-boolean v1, v3, Lcom/lottery/app/MainActivity;->c:Z

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/lottery/app/MainActivity;->g()V

    .line 106
    .line 107
    .line 108
    :cond_6b
    return-void

    .line 109
    :pswitch_6c
    sget v0, Lcom/lottery/app/MainActivity;->g:I

    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const-string v0, "1111 splash min duration reached"

    .line 115
    .line 116
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    iput-boolean v1, v3, Lcom/lottery/app/MainActivity;->c:Z

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/lottery/app/MainActivity;->g()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_5b
    .end packed-switch
.end method
