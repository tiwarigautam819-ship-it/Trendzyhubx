###### Class b.n (b.n)
.class public final Lb/n;
.super Ld/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic h:Landroidx/fragment/app/h0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lb/n;->h:Landroidx/fragment/app/h0;

    .line 2
    .line 3
    invoke-direct {p0}, Ld/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(ILe/a;Ljava/lang/Object;)V
    .registers 13

    .line 1
    const-string v0, "contract"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lb/n;->h:Landroidx/fragment/app/h0;

    .line 7
    .line 8
    invoke-virtual {p2, v1, p3}, Le/a;->b(Landroidx/fragment/app/h0;Ljava/lang/Object;)Lk1/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_20

    .line 13
    .line 14
    new-instance p2, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    new-instance p3, Lb/m;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {p3, p1, v1, p0, v0}, Lb/m;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    invoke-virtual {p2, v1, p3}, Le/a;->a(Landroidx/fragment/app/h0;Ljava/lang/Object;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    if-eqz p3, :cond_3e

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-static {p3}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object p3

    .line 54
    if-nez p3, :cond_3e

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 61
    .line 62
    .line 63
    :cond_3e
    const-string p3, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 64
    .line 65
    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4f

    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_4d
    move-object v8, v0

    .line 79
    goto :goto_51

    .line 80
    :cond_4f
    const/4 v0, 0x0

    .line 81
    goto :goto_4d

    .line 82
    :goto_51
    const-string p3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    if-eqz p3, :cond_6c

    .line 93
    .line 94
    const-string p3, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 95
    .line 96
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    if-nez p2, :cond_68

    .line 101
    .line 102
    const/4 p2, 0x0

    .line 103
    new-array p2, p2, [Ljava/lang/String;

    .line 104
    .line 105
    :cond_68
    invoke-static {v1, p2, p1}, Ly/b;->d(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_6c
    const-string p3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 110
    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-eqz p3, :cond_aa

    .line 120
    .line 121
    const-string p3, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 122
    .line 123
    invoke-virtual {p2, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    check-cast p2, Ld/i;

    .line 128
    .line 129
    :try_start_80
    invoke-static {p2}, Ld7/g;->c(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p2, Ld/i;->a:Landroid/content/IntentSender;

    .line 133
    .line 134
    iget-object v4, p2, Ld/i;->b:Landroid/content/Intent;

    .line 135
    .line 136
    iget v5, p2, Ld/i;->c:I

    .line 137
    .line 138
    iget v6, p2, Ld/i;->d:I
    :try_end_8b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_80 .. :try_end_8b} :catch_94

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    move v3, p1

    .line 142
    :try_start_8d
    invoke-virtual/range {v1 .. v8}, Lb/p;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_90
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_8d .. :try_end_90} :catch_91

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :catch_91
    move-exception v0

    .line 147
    :goto_92
    move-object p1, v0

    .line 148
    goto :goto_97

    .line 149
    :catch_94
    move-exception v0

    .line 150
    move v3, p1

    .line 151
    goto :goto_92

    .line 152
    :goto_97
    new-instance p2, Landroid/os/Handler;

    .line 153
    .line 154
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    .line 160
    .line 161
    new-instance p3, Lb/m;

    .line 162
    .line 163
    const/4 v0, 0x1

    .line 164
    invoke-direct {p3, v3, v0, p0, p1}, Lb/m;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_aa
    move v3, p1

    .line 172
    invoke-virtual {v1, p2, v3, v8}, Lb/p;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method
