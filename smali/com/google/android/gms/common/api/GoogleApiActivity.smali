###### Class com.google.android.gms.common.api.GoogleApiActivity (com.google.android.gms.common.api.GoogleApiActivity)
.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final synthetic b:I


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_43

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v2, "notify_manager"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 19
    .line 20
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_4b

    .line 24
    .line 25
    invoke-static {p0}, Lx3/d;->d(Landroid/content/Context;)Lx3/d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p3, -0x1

    .line 30
    if-eq p2, p3, :cond_38

    .line 31
    .line 32
    if-eqz p2, :cond_22

    .line 33
    .line 34
    goto :goto_4b

    .line 35
    :cond_22
    new-instance p2, Lcom/google/android/gms/common/ConnectionResult;

    .line 36
    .line 37
    const/16 v0, 0xd

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "failing_client_id"

    .line 48
    .line 49
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-virtual {p1, p2, p3}, Lx3/d;->e(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_4b

    .line 57
    :cond_38
    iget-object p1, p1, Lx3/d;->m:Lcom/google/android/gms/internal/measurement/r0;

    .line 58
    .line 59
    const/4 p2, 0x3

    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_4b

    .line 68
    :cond_43
    const/4 v1, 0x2

    .line 69
    if-ne p1, v1, :cond_4b

    .line 70
    .line 71
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 72
    .line 73
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 74
    .line 75
    .line 76
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_d

    .line 5
    .line 6
    const-string v0, "resolution"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 13
    .line 14
    :cond_d
    iget p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq p1, v1, :cond_c3

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "GoogleApiActivity"

    .line 28
    .line 29
    if-nez p1, :cond_27

    .line 30
    .line 31
    const-string p1, "Activity started without extras"

    .line 32
    .line 33
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_27
    const-string v0, "pending_intent"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v3, v0

    .line 47
    check-cast v3, Landroid/app/PendingIntent;

    .line 48
    .line 49
    const-string v0, "error_code"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/Integer;

    .line 56
    .line 57
    if-nez v3, :cond_46

    .line 58
    .line 59
    if-eqz v0, :cond_3d

    .line 60
    .line 61
    goto :goto_46

    .line 62
    :cond_3d
    const-string p1, "Activity started without resolution"

    .line 63
    .line 64
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_46
    :goto_46
    if-eqz v3, :cond_b3

    .line 72
    .line 73
    :try_start_48
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 74
    .line 75
    .line 76
    move-result-object v5
    :try_end_4c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_4c} :catch_69
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_48 .. :try_end_4c} :catch_5d

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v6, 0x1

    .line 80
    const/4 v7, 0x0

    .line 81
    const/4 v8, 0x0

    .line 82
    move-object v4, p0

    .line 83
    :try_start_52
    invoke-virtual/range {v4 .. v10}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 84
    .line 85
    .line 86
    iput v1, v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I
    :try_end_57
    .catch Landroid/content/ActivityNotFoundException; {:try_start_52 .. :try_end_57} :catch_5b
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_52 .. :try_end_57} :catch_58

    .line 87
    .line 88
    return-void

    .line 89
    :catch_58
    move-exception v0

    .line 90
    :goto_59
    move-object p1, v0

    .line 91
    goto :goto_60

    .line 92
    :catch_5b
    move-exception v0

    .line 93
    goto :goto_6b

    .line 94
    :catch_5d
    move-exception v0

    .line 95
    move-object v4, p0

    .line 96
    goto :goto_59

    .line 97
    :goto_60
    const-string v0, "Failed to launch pendingIntent"

    .line 98
    .line 99
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 103
    .line 104
    .line 105
    goto :goto_c4

    .line 106
    :catch_69
    move-exception v0

    .line 107
    move-object v4, p0

    .line 108
    :goto_6b
    const-string v5, "notify_manager"

    .line 109
    .line 110
    invoke-virtual {p1, v5, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_8e

    .line 115
    .line 116
    invoke-static {p0}, Lx3/d;->d(Landroid/content/Context;)Lx3/d;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    .line 121
    .line 122
    const/16 v2, 0x16

    .line 123
    .line 124
    const/4 v3, 0x0

    .line 125
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const-string v3, "failing_client_id"

    .line 133
    .line 134
    const/4 v5, -0x1

    .line 135
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-virtual {p1, v0, v2}, Lx3/d;->e(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 140
    .line 141
    .line 142
    goto :goto_ad

    .line 143
    :cond_8e
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    const-string v3, "Activity not found while launching "

    .line 148
    .line 149
    const-string v5, "."

    .line 150
    .line 151
    invoke-static {v3, p1, v5}, Lq2/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 156
    .line 157
    const-string v5, "generic"

    .line 158
    .line 159
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_aa

    .line 164
    .line 165
    const-string v3, " This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store."

    .line 166
    .line 167
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    :cond_aa
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    :goto_ad
    iput v1, v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 177
    .line 178
    .line 179
    goto :goto_c4

    .line 180
    :cond_b3
    move-object v4, p0

    .line 181
    invoke-static {v0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    sget-object v0, Lv3/d;->d:Lv3/d;

    .line 189
    .line 190
    invoke-virtual {v0, p0, p1, p0}, Lv3/d;->c(Lcom/google/android/gms/common/api/GoogleApiActivity;ILcom/google/android/gms/common/api/GoogleApiActivity;)V

    .line 191
    .line 192
    .line 193
    iput v1, v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 194
    .line 195
    return-void

    .line 196
    :cond_c3
    move-object v4, p0

    .line 197
    :goto_c4
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const-string v0, "resolution"

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->a:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
