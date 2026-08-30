###### Class v3.d (v3.d)
.class public final Lv3/d;
.super Lv3/e;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Lv3/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv3/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Lv3/d;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lv3/d;->d:Lv3/d;

    .line 14
    .line 15
    return-void
.end method

.method public static d(Landroid/app/Activity;ILcom/google/android/gms/common/internal/u;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;
    .registers 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_4
    new-instance v1, Landroid/util/TypedValue;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const v3, 0x1010309

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "Theme.Dialog.Alert"

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2c

    .line 38
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    if-nez v0, :cond_33

    .line 46
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :cond_33
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/t;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_3f

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    :cond_3f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    if-eq p1, v4, :cond_63

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    if-eq p1, v1, :cond_5b

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    if-eq p1, v1, :cond_53

    .line 75
    .line 76
    const v1, 0x104000a

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    goto :goto_6a

    .line 84
    :cond_53
    const v1, 0x7f0f003f

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    goto :goto_6a

    .line 92
    :cond_5b
    const v1, 0x7f0f0049

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    goto :goto_6a

    .line 100
    :cond_63
    const v1, 0x7f0f0042

    .line 101
    .line 102
    .line 103
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    :goto_6a
    if-eqz p3, :cond_6f

    .line 108
    .line 109
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    :cond_6f
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/t;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_78

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    .line 120
    .line 121
    :cond_78
    const-string p0, "Creating dialog for Google Play services availability issue. ConnectionResult="

    .line 122
    .line 123
    invoke-static {p1, p0}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "GoogleApiAvailability"

    .line 133
    .line 134
    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method

.method public static e(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 7

    .line 1
    const-string v0, "Cannot display null dialog"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    instance-of v2, p0, Landroidx/fragment/app/h0;
    :try_end_5
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_5} :catch_25

    .line 5
    .line 6
    if-eqz v2, :cond_25

    .line 7
    .line 8
    check-cast p0, Landroidx/fragment/app/h0;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/h0;->getSupportFragmentManager()Landroidx/fragment/app/y0;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v2, Lv3/h;

    .line 15
    .line 16
    invoke-direct {v2}, Lv3/h;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, v2, Lv3/h;->t0:Landroid/app/Dialog;

    .line 29
    .line 30
    if-eqz p3, :cond_21

    .line 31
    .line 32
    iput-object p3, v2, Lv3/h;->u0:Landroid/content/DialogInterface$OnCancelListener;

    .line 33
    .line 34
    :cond_21
    invoke-virtual {v2, p0, p2}, Landroidx/fragment/app/t;->L(Landroidx/fragment/app/y0;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catch_25
    :cond_25
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance v2, Lv3/b;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/d0;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, v2, Lv3/b;->a:Landroid/app/Dialog;

    .line 57
    .line 58
    if-eqz p3, :cond_3d

    .line 59
    .line 60
    iput-object p3, v2, Lv3/b;->b:Landroid/content/DialogInterface$OnCancelListener;

    .line 61
    .line 62
    :cond_3d
    invoke-virtual {v2, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/api/GoogleApiActivity;ILcom/google/android/gms/common/api/GoogleApiActivity;)V
    .registers 7

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p1, p2, v0}, Lv3/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/common/internal/u;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/common/internal/u;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, v1, p3}, Lv3/d;->d(Landroid/app/Activity;ILcom/google/android/gms/common/internal/u;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    const-string v0, "GooglePlayServicesErrorDialog"

    .line 21
    .line 22
    invoke-static {p1, p2, v0, p3}, Lv3/d;->e(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final f(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .registers 13

    .line 1
    const-string v0, "GMS core API Availability. ConnectionResult="

    .line 2
    .line 3
    const-string v1, ", tag=null"

    .line 4
    .line 5
    invoke-static {p2, v0, v1}, La1/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "GoogleApiAvailability"

    .line 15
    .line 16
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x12

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne p2, v0, :cond_23

    .line 23
    .line 24
    new-instance p2, Lv3/i;

    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lv3/i;-><init>(Lv3/d;Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const-wide/32 v2, 0x1d4c0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_23
    const/4 v0, 0x6

    .line 37
    if-nez p3, :cond_30

    .line 38
    .line 39
    if-ne p2, v0, :cond_2f

    .line 40
    .line 41
    const-string p1, "GoogleApiAvailability"

    .line 42
    .line 43
    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 44
    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2f
    return-void

    .line 49
    :cond_30
    if-ne p2, v0, :cond_39

    .line 50
    .line 51
    const-string v2, "common_google_play_services_resolution_required_title"

    .line 52
    .line 53
    invoke-static {p1, v2}, Lcom/google/android/gms/common/internal/t;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_3d

    .line 58
    :cond_39
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/t;->c(Landroid/content/Context;I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    :goto_3d
    const v3, 0x7f0f0046

    .line 63
    .line 64
    .line 65
    if-nez v2, :cond_4a

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    :cond_4a
    if-eq p2, v0, :cond_56

    .line 76
    .line 77
    const/16 v0, 0x13

    .line 78
    .line 79
    if-ne p2, v0, :cond_51

    .line 80
    .line 81
    goto :goto_56

    .line 82
    :cond_51
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/t;->b(Landroid/content/Context;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    goto :goto_60

    .line 87
    :cond_56
    :goto_56
    invoke-static {p1}, Lcom/google/android/gms/common/internal/t;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v4, "common_google_play_services_resolution_required_text"

    .line 92
    .line 93
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/common/internal/t;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v5, "notification"

    .line 102
    .line 103
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-static {v5}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    check-cast v5, Landroid/app/NotificationManager;

    .line 111
    .line 112
    new-instance v6, Ly/p;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    invoke-direct {v6, p1, v7}, Ly/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-boolean v1, v6, Ly/p;->m:Z

    .line 119
    .line 120
    invoke-virtual {v6, v1}, Ly/p;->c(Z)V

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iput-object v2, v6, Ly/p;->e:Ljava/lang/CharSequence;

    .line 128
    .line 129
    new-instance v2, Ly/n;

    .line 130
    .line 131
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    iput-object v7, v2, Ly/n;->b:Ljava/lang/CharSequence;

    .line 139
    .line 140
    invoke-virtual {v6, v2}, Ly/p;->e(Landroidx/fragment/app/m;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    sget-object v7, Lb4/c;->c:Ljava/lang/Boolean;

    .line 148
    .line 149
    if-nez v7, :cond_a2

    .line 150
    .line 151
    const-string v7, "android.hardware.type.watch"

    .line 152
    .line 153
    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    sput-object v2, Lb4/c;->c:Ljava/lang/Boolean;

    .line 162
    .line 163
    :cond_a2
    sget-object v2, Lb4/c;->c:Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    const/4 v7, 0x2

    .line 170
    if-eqz v2, :cond_d2

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 177
    .line 178
    iget-object v2, v6, Ly/p;->s:Landroid/app/Notification;

    .line 179
    .line 180
    iput v0, v2, Landroid/app/Notification;->icon:I

    .line 181
    .line 182
    iput v7, v6, Ly/p;->j:I

    .line 183
    .line 184
    invoke-static {p1}, Lb4/c;->d(Landroid/content/Context;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_cf

    .line 189
    .line 190
    const v0, 0x7f0f004e

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v2, v6, Ly/p;->b:Ljava/util/ArrayList;

    .line 198
    .line 199
    new-instance v3, Ly/j;

    .line 200
    .line 201
    invoke-direct {v3, v0, p3}, Ly/j;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_f5

    .line 208
    :cond_cf
    iput-object p3, v6, Ly/p;->g:Landroid/app/PendingIntent;

    .line 209
    .line 210
    goto :goto_f5

    .line 211
    :cond_d2
    const v2, 0x108008a

    .line 212
    .line 213
    .line 214
    iget-object v8, v6, Ly/p;->s:Landroid/app/Notification;

    .line 215
    .line 216
    iput v2, v8, Landroid/app/Notification;->icon:I

    .line 217
    .line 218
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    iget-object v3, v6, Ly/p;->s:Landroid/app/Notification;

    .line 223
    .line 224
    invoke-static {v2}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 229
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    iget-object v4, v6, Ly/p;->s:Landroid/app/Notification;

    .line 235
    .line 236
    iput-wide v2, v4, Landroid/app/Notification;->when:J

    .line 237
    .line 238
    iput-object p3, v6, Ly/p;->g:Landroid/app/PendingIntent;

    .line 239
    .line 240
    invoke-static {v0}, Ly/p;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 241
    .line 242
    .line 243
    move-result-object p3

    .line 244
    iput-object p3, v6, Ly/p;->f:Ljava/lang/CharSequence;

    .line 245
    .line 246
    :goto_f5
    invoke-static {}, Lb4/c;->b()Z

    .line 247
    .line 248
    .line 249
    move-result p3

    .line 250
    if-nez p3, :cond_fc

    .line 251
    .line 252
    goto :goto_133

    .line 253
    :cond_fc
    invoke-static {}, Lb4/c;->b()Z

    .line 254
    .line 255
    .line 256
    move-result p3

    .line 257
    if-eqz p3, :cond_151

    .line 258
    .line 259
    sget-object p3, Lv3/d;->c:Ljava/lang/Object;

    .line 260
    .line 261
    monitor-enter p3

    .line 262
    :try_start_105
    monitor-exit p3
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_14e

    .line 263
    const-string p3, "com.google.android.gms.availability"

    .line 264
    .line 265
    invoke-static {v5}, Lr1/a;->c(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    const v2, 0x7f0f0045

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    if-nez v0, :cond_121

    .line 281
    .line 282
    invoke-static {p1}, Lr1/a;->e(Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-static {v5, p1}, Lcom/getcapacitor/plugin/util/a;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 287
    .line 288
    .line 289
    goto :goto_131

    .line 290
    :cond_121
    invoke-static {v0}, Lr1/a;->h(Landroid/app/NotificationChannel;)Ljava/lang/CharSequence;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_131

    .line 299
    .line 300
    invoke-static {v0, p1}, Lr1/a;->n(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-static {v5, v0}, Lcom/getcapacitor/plugin/util/a;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 304
    .line 305
    .line 306
    :cond_131
    :goto_131
    iput-object p3, v6, Ly/p;->q:Ljava/lang/String;

    .line 307
    .line 308
    :goto_133
    invoke-virtual {v6}, Ly/p;->a()Landroid/app/Notification;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    if-eq p2, v1, :cond_142

    .line 313
    .line 314
    if-eq p2, v7, :cond_142

    .line 315
    .line 316
    const/4 p3, 0x3

    .line 317
    if-eq p2, p3, :cond_142

    .line 318
    .line 319
    const p2, 0x9b6d

    .line 320
    .line 321
    .line 322
    goto :goto_14a

    .line 323
    :cond_142
    sget-object p2, Lv3/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 324
    .line 325
    const/4 p3, 0x0

    .line 326
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    .line 328
    .line 329
    const/16 p2, 0x28c4

    .line 330
    .line 331
    :goto_14a
    invoke-virtual {v5, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 332
    .line 333
    .line 334
    return-void

    .line 335
    :catchall_14e
    move-exception p1

    .line 336
    :try_start_14f
    monitor-exit p3
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    .line 337
    throw p1

    .line 338
    :cond_151
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 339
    .line 340
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 341
    .line 342
    .line 343
    throw p1
.end method

.method public final g(Landroid/app/Activity;Lx3/f;ILandroid/content/DialogInterface$OnCancelListener;)V
    .registers 8

    .line 1
    const-string v0, "d"

    .line 2
    .line 3
    invoke-super {p0, p1, p3, v0}, Lv3/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/common/internal/u;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v0, p2, v2}, Lcom/google/android/gms/common/internal/u;-><init>(Landroid/content/Intent;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p3, v1, p4}, Lv3/d;->d(Landroid/app/Activity;ILcom/google/android/gms/common/internal/u;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_13

    .line 18
    .line 19
    return-void

    .line 20
    :cond_13
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 21
    .line 22
    invoke-static {p1, p2, p3, p4}, Lv3/d;->e(Landroid/app/Activity;Landroid/app/AlertDialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
