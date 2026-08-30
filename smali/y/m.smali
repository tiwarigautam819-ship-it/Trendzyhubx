###### Class y.m (y.m)
.class public final Ly/m;
.super Landroidx/fragment/app/m;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Landroidx/core/graphics/drawable/IconCompat;

.field public d:Z


# virtual methods
.method public final a(Lcom/google/firebase/messaging/y;)V
    .registers 9

    .line 1
    iget-object v0, p1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/app/Notification$Builder;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Landroid/content/Context;

    .line 8
    .line 9
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Ly/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 20
    .line 21
    const/16 v3, 0x1f

    .line 22
    .line 23
    if-eqz v2, :cond_68

    .line 24
    .line 25
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    if-lt v4, v3, :cond_24

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Ly/l;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 34
    .line 35
    .line 36
    goto :goto_68

    .line 37
    :cond_24
    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->d()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v4, 0x1

    .line 42
    if-ne v2, v4, :cond_68

    .line 43
    .line 44
    iget-object v2, p0, Ly/m;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 45
    .line 46
    iget v5, v2, Landroidx/core/graphics/drawable/IconCompat;->a:I

    .line 47
    .line 48
    const/4 v6, -0x1

    .line 49
    if-ne v5, v6, :cond_3d

    .line 50
    .line 51
    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 52
    .line 53
    instance-of v4, v2, Landroid/graphics/Bitmap;

    .line 54
    .line 55
    if-eqz v4, :cond_3b

    .line 56
    .line 57
    check-cast v2, Landroid/graphics/Bitmap;

    .line 58
    .line 59
    goto :goto_4f

    .line 60
    :cond_3b
    move-object v2, v0

    .line 61
    goto :goto_4f

    .line 62
    :cond_3d
    if-ne v5, v4, :cond_44

    .line 63
    .line 64
    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Landroid/graphics/Bitmap;

    .line 67
    .line 68
    goto :goto_4f

    .line 69
    :cond_44
    const/4 v6, 0x5

    .line 70
    if-ne v5, v6, :cond_54

    .line 71
    .line 72
    iget-object v2, v2, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Landroid/graphics/Bitmap;

    .line 75
    .line 76
    invoke-static {v2, v4}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :goto_4f
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto :goto_68

    .line 85
    :cond_54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "called getBitmap() on "

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_68
    :goto_68
    iget-boolean v2, p0, Ly/m;->d:Z

    .line 106
    .line 107
    if-eqz v2, :cond_7b

    .line 108
    .line 109
    iget-object v2, p0, Ly/m;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 110
    .line 111
    if-nez v2, :cond_74

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 114
    .line 115
    .line 116
    goto :goto_7b

    .line 117
    :cond_74
    invoke-virtual {v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->f(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v1, p1}, Ly/k;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    .line 122
    .line 123
    .line 124
    :cond_7b
    :goto_7b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    if-lt p1, v3, :cond_86

    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    invoke-static {v1, p1}, Ly/l;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v0}, Ly/l;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    :cond_86
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    .line 2
    .line 3
    return-object v0
.end method
