###### Class com.engagelab.privates.common.g0 (com.engagelab.privates.common.g0)
.class public Lcom/engagelab/privates/common/g0;
.super Lcom/engagelab/privates/common/i0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/engagelab/privates/common/i0;-><init>(Landroid/content/Context;Lcom/engagelab/privates/common/d0;Lcom/engagelab/privates/push/api/InAppMessage;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/engagelab/privates/push/api/InAppMessage;->getContent()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/engagelab/privates/common/f0;->g:I

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0x1f

    .line 18
    .line 19
    if-ne v4, v1, :cond_2b

    .line 20
    .line 21
    iget-object v0, p0, Lcom/engagelab/privates/common/g0;->j:Landroid/widget/ImageView;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/engagelab/privates/common/g0;->l:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/engagelab/privates/common/g0;->j:Landroid/widget/ImageView;

    .line 32
    .line 33
    new-instance v1, Lcom/engagelab/privates/common/g0$a;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/engagelab/privates/common/g0$a;-><init>(Lcom/engagelab/privates/common/g0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    goto :goto_5a

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    goto :goto_84

    .line 44
    :cond_2b
    iget-object v1, p0, Lcom/engagelab/privates/common/g0;->j:Landroid/widget/ImageView;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/engagelab/privates/common/g0;->l:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/engagelab/privates/common/g0;->m:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    const/16 v2, 0x8c

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 69
    .line 70
    iget-object v2, p0, Lcom/engagelab/privates/common/g0;->m:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/engagelab/privates/common/g0;->l:Landroid/widget/TextView;

    .line 76
    .line 77
    const/4 v2, 0x3

    .line 78
    invoke-virtual {p0, v1, v0, v2}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;Lorg/json/JSONObject;I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/engagelab/privates/common/g0;->l:Landroid/widget/TextView;

    .line 82
    .line 83
    new-instance v1, Lcom/engagelab/privates/common/g0$b;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Lcom/engagelab/privates/common/g0$b;-><init>(Lcom/engagelab/privates/common/g0;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    :goto_5a
    invoke-virtual {p0}, Lcom/engagelab/privates/common/g0;->g()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getLocalImageUrl()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    new-instance v4, Lorg/json/JSONObject;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->c:Lcom/engagelab/privates/push/api/InAppMessage;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/InAppMessage;->getClick()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/engagelab/privates/common/f0;->e:Landroid/content/Context;

    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/engagelab/privates/common/g0;->k:Landroid/widget/ImageView;

    .line 122
    .line 123
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 124
    .line 125
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 126
    .line 127
    const/4 v5, 0x1

    .line 128
    move-object v1, p0

    .line 129
    invoke-virtual/range {v1 .. v7}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/json/JSONObject;III)V
    :try_end_83
    .catchall {:try_start_0 .. :try_end_83} :catchall_29

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :goto_84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "full bindDataToView throwable="

    .line 136
    .line 137
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "BaseInAppWrapper"

    .line 148
    .line 149
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/g0;->n:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/engagelab/privates/common/i0;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_15

    .line 14
    .line 15
    const/16 v1, 0xd3

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/engagelab/privates/common/f0;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, -0x1

    .line 23
    :goto_16
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/engagelab/privates/common/g0;->n:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    invoke-super {p0}, Lcom/engagelab/privates/common/i0;->g()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public h()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/engagelab/privates/common/i0;->h()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/g0;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Landroid/widget/TextView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "jpush_full"

    .line 2
    .line 3
    return-object v0
.end method

.method public l()V
    .registers 2

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/ImageView;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/g0;->k:Landroid/widget/ImageView;

    .line 10
    .line 11
    const-string v0, "container"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/engagelab/privates/common/g0;->n:Landroid/view/View;

    .line 18
    .line 19
    const-string v0, "btn_countdown"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/engagelab/privates/common/g0;->l:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string v0, "image_close"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/engagelab/privates/common/g0;->j:Landroid/widget/ImageView;

    .line 38
    .line 39
    const-string v0, "countdown_container"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/engagelab/privates/common/i0;->a(Ljava/lang/String;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/engagelab/privates/common/g0;->m:Landroid/view/View;

    .line 46
    .line 47
    return-void
.end method

###### Class com.engagelab.privates.common.g0.a (com.engagelab.privates.common.g0$a)
.class public Lcom/engagelab/privates/common/g0$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/g0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/g0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/g0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/g0$a;->a:Lcom/engagelab/privates/common/g0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/engagelab/privates/common/g0$a;->a:Lcom/engagelab/privates/common/g0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-virtual {p1, v2, v0, v1}, Lcom/engagelab/privates/common/f0;->a(ILjava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

###### Class com.engagelab.privates.common.g0.b (com.engagelab.privates.common.g0$b)
.class public Lcom/engagelab/privates/common/g0$b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/g0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/engagelab/privates/common/g0;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/g0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/g0$b;->a:Lcom/engagelab/privates/common/g0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/engagelab/privates/common/g0$b;->a:Lcom/engagelab/privates/common/g0;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v0}, Lcom/engagelab/privates/common/f0;->a(ILjava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
