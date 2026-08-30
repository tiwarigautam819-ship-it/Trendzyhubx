###### Class q2.p0 (q2.p0)
.class public Lq2/p0;
.super Landroid/app/Dialog;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile m:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lq2/k0;

.field public d:Lq2/o0;

.field public e:Landroid/app/ProgressDialog;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/FrameLayout;

.field public final h:Lq2/m0;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/h0;Ljava/lang/String;Landroid/os/Bundle;ILq2/k0;)V
    .registers 10

    .line 1
    invoke-static {}, Lq2/g;->k()V

    .line 2
    .line 3
    .line 4
    sget v0, Lq2/p0;->m:I

    .line 5
    .line 6
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v0, "fbconnect://success"

    .line 10
    .line 11
    iput-object v0, p0, Lq2/p0;->b:Ljava/lang/String;

    .line 12
    .line 13
    if-nez p3, :cond_13

    .line 14
    .line 15
    new-instance p3, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    :cond_13
    invoke-static {p1}, Lq2/g0;->y(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1b

    .line 25
    .line 26
    const-string v0, "fbconnect://chrome_os_success"

    .line 27
    .line 28
    :cond_1b
    iput-object v0, p0, Lq2/p0;->b:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "redirect_uri"

    .line 31
    .line 32
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "display"

    .line 36
    .line 37
    const-string v0, "touch"

    .line 38
    .line 39
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "client_id"

    .line 43
    .line 44
    invoke-static {}, Lx1/r;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    new-array v1, v0, [Ljava/lang/Object;

    .line 55
    .line 56
    const-string v2, "18.1.3"

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput-object v2, v1, v3

    .line 60
    .line 61
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "android-%s"

    .line 66
    .line 67
    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v1, "sdk"

    .line 72
    .line 73
    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object p5, p0, Lq2/p0;->c:Lq2/k0;

    .line 77
    .line 78
    const-string p1, "share"

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_65

    .line 85
    .line 86
    const-string p1, "media"

    .line 87
    .line 88
    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_65

    .line 93
    .line 94
    new-instance p1, Lq2/m0;

    .line 95
    .line 96
    invoke-direct {p1, p0, p2, p3}, Lq2/m0;-><init>(Lq2/p0;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lq2/p0;->h:Lq2/m0;

    .line 100
    .line 101
    return-void

    .line 102
    :cond_65
    sget-object p1, Lq2/n0;->a:[I

    .line 103
    .line 104
    invoke-static {p4}, Landroidx/fragment/app/m1;->e(I)I

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    aget p1, p1, p4

    .line 109
    .line 110
    if-ne p1, v0, :cond_7a

    .line 111
    .line 112
    invoke-static {}, Lq2/g0;->r()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string p2, "oauth/authorize"

    .line 117
    .line 118
    invoke-static {p1, p2, p3}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    goto :goto_9a

    .line 123
    :cond_7a
    invoke-static {}, Lq2/g0;->p()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lx1/r;->d()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p5

    .line 136
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p5, "/dialog/"

    .line 140
    .line 141
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p1, p2, p3}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    :goto_9a
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lq2/p0;->a:Ljava/lang/String;

    .line 160
    .line 161
    return-void
.end method

.method public static a(IFII)I
    .registers 8

    .line 1
    int-to-float v0, p0

    .line 2
    div-float/2addr v0, p1

    .line 3
    float-to-int p1, v0

    .line 4
    if-gt p1, p2, :cond_8

    .line 5
    .line 6
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    goto :goto_17

    .line 9
    :cond_8
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 10
    .line 11
    if-lt p1, p3, :cond_e

    .line 12
    .line 13
    move-wide p1, v0

    .line 14
    goto :goto_17

    .line 15
    :cond_e
    sub-int p1, p3, p1

    .line 16
    .line 17
    int-to-double v2, p1

    .line 18
    sub-int/2addr p3, p2

    .line 19
    int-to-double p1, p3

    .line 20
    div-double/2addr v2, p1

    .line 21
    mul-double/2addr v2, v0

    .line 22
    add-double p1, v2, v0

    .line 23
    .line 24
    :goto_17
    int-to-double v0, p0

    .line 25
    mul-double/2addr v0, p1

    .line 26
    double-to-int p0, v0

    .line 27
    return p0
.end method

.method public static final b(Landroidx/fragment/app/h0;)V
    .registers 3

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    goto :goto_2e

    .line 4
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/16 v1, 0x80

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_11} :catch_2e

    .line 18
    if-eqz p0, :cond_16

    .line 19
    .line 20
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 21
    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    if-nez v0, :cond_1a

    .line 25
    .line 26
    goto :goto_2e

    .line 27
    :cond_1a
    sget v0, Lq2/p0;->m:I

    .line 28
    .line 29
    if-nez v0, :cond_2e

    .line 30
    .line 31
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v0, "com.facebook.sdk.WebDialogTheme"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_29

    .line 40
    .line 41
    goto :goto_2c

    .line 42
    :cond_29
    const p0, 0x7f100178

    .line 43
    .line 44
    .line 45
    :goto_2c
    sput p0, Lq2/p0;->m:I

    .line 46
    .line 47
    :catch_2e
    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lq2/g0;->G(Ljava/lang/String;)Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lq2/g0;->G(Ljava/lang/String;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lq2/p0;->c:Lq2/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-boolean v0, p0, Lq2/p0;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_10

    .line 8
    .line 9
    new-instance v0, Lx1/n;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lq2/p0;->e(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void
.end method

.method public final d()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "window"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/view/WindowManager;

    .line 17
    .line 18
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    .line 29
    .line 30
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 31
    .line 32
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 33
    .line 34
    if-ge v0, v2, :cond_25

    .line 35
    .line 36
    move v3, v0

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    move v3, v2

    .line 39
    :goto_26
    if-ge v0, v2, :cond_29

    .line 40
    .line 41
    move v0, v2

    .line 42
    :cond_29
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 43
    .line 44
    const/16 v4, 0x1e0

    .line 45
    .line 46
    const/16 v5, 0x320

    .line 47
    .line 48
    invoke-static {v3, v2, v4, v5}, Lq2/p0;->a(IFII)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    .line 60
    const/16 v4, 0x500

    .line 61
    .line 62
    invoke-static {v0, v3, v5, v4}, Lq2/p0;->a(IFII)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 67
    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_50

    .line 77
    .line 78
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 79
    .line 80
    .line 81
    :cond_50
    return-void
.end method

.method public final dismiss()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/p0;->d:Lq2/o0;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 6
    .line 7
    .line 8
    :cond_7
    iget-boolean v0, p0, Lq2/p0;->j:Z

    .line 9
    .line 10
    if-nez v0, :cond_18

    .line 11
    .line 12
    iget-object v0, p0, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 13
    .line 14
    if-eqz v0, :cond_18

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_18

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    :cond_18
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq2/p0;->c:Lq2/k0;

    .line 2
    .line 3
    if-eqz v0, :cond_23

    .line 4
    .line 5
    iget-boolean v0, p0, Lq2/p0;->i:Z

    .line 6
    .line 7
    if-nez v0, :cond_23

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lq2/p0;->i:Z

    .line 11
    .line 12
    instance-of v0, p1, Lx1/l;

    .line 13
    .line 14
    if-eqz v0, :cond_12

    .line 15
    .line 16
    check-cast p1, Lx1/l;

    .line 17
    .line 18
    goto :goto_18

    .line 19
    :cond_12
    new-instance v0, Lx1/l;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_18
    iget-object v0, p0, Lq2/p0;->c:Lq2/k0;

    .line 26
    .line 27
    if-eqz v0, :cond_20

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1, p1}, Lq2/k0;->a(Landroid/os/Bundle;Lx1/l;)V

    .line 31
    .line 32
    .line 33
    :cond_20
    invoke-virtual {p0}, Lq2/p0;->dismiss()V

    .line 34
    .line 35
    .line 36
    :cond_23
    return-void
.end method

.method public final f(I)V
    .registers 9

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lq2/o0;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 26
    .line 27
    if-eqz v2, :cond_1f

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1f
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 33
    .line 34
    if-eqz v2, :cond_2b

    .line 35
    .line 36
    new-instance v3, Lq2/j0;

    .line 37
    .line 38
    invoke-direct {v3, p0}, Lq2/j0;-><init>(Lq2/p0;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz v2, :cond_35

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_36

    .line 54
    :cond_35
    move-object v2, v3

    .line 55
    :goto_36
    const/4 v4, 0x1

    .line 56
    if-nez v2, :cond_3a

    .line 57
    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    .line 61
    .line 62
    :goto_3d
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 63
    .line 64
    if-eqz v2, :cond_51

    .line 65
    .line 66
    iget-object v5, p0, Lq2/p0;->a:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v5, :cond_49

    .line 69
    .line 70
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_51

    .line 74
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string v0, "Required value was null."

    .line 77
    .line 78
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_51
    :goto_51
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 83
    .line 84
    if-eqz v2, :cond_5e

    .line 85
    .line 86
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 87
    .line 88
    const/4 v6, -0x1

    .line 89
    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    .line 94
    .line 95
    :cond_5e
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 96
    .line 97
    if-eqz v2, :cond_66

    .line 98
    .line 99
    const/4 v5, 0x4

    .line 100
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :cond_66
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 104
    .line 105
    if-eqz v2, :cond_6f

    .line 106
    .line 107
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    goto :goto_70

    .line 112
    :cond_6f
    move-object v2, v3

    .line 113
    :goto_70
    if-nez v2, :cond_73

    .line 114
    .line 115
    goto :goto_76

    .line 116
    :cond_73
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 117
    .line 118
    .line 119
    :goto_76
    iget-object v2, p0, Lq2/p0;->d:Lq2/o0;

    .line 120
    .line 121
    if-eqz v2, :cond_7e

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :cond_7e
    if-nez v3, :cond_81

    .line 128
    .line 129
    goto :goto_84

    .line 130
    :cond_81
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 131
    .line 132
    .line 133
    :goto_84
    iget-object v1, p0, Lq2/p0;->d:Lq2/o0;

    .line 134
    .line 135
    if-eqz v1, :cond_8b

    .line 136
    .line 137
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 138
    .line 139
    .line 140
    :cond_8b
    iget-object v1, p0, Lq2/p0;->d:Lq2/o0;

    .line 141
    .line 142
    if-eqz v1, :cond_92

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 145
    .line 146
    .line 147
    :cond_92
    iget-object v1, p0, Lq2/p0;->d:Lq2/o0;

    .line 148
    .line 149
    if-eqz v1, :cond_9e

    .line 150
    .line 151
    new-instance v2, Lq2/h0;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    .line 158
    .line 159
    :cond_9e
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lq2/p0;->d:Lq2/o0;

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    const/high16 p1, -0x34000000    # -3.3554432E7f

    .line 168
    .line 169
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lq2/p0;->g:Landroid/widget/FrameLayout;

    .line 173
    .line 174
    if-eqz p1, :cond_b2

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 177
    .line 178
    .line 179
    :cond_b2
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lq2/p0;->j:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "context"

    .line 9
    .line 10
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v2, 0x1a

    .line 16
    .line 17
    if-ge v1, v2, :cond_13

    .line 18
    .line 19
    goto :goto_59

    .line 20
    :cond_13
    invoke-static {}, Lcom/getcapacitor/plugin/util/a;->k()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/a;->j(Ljava/lang/Object;)Landroid/view/autofill/AutofillManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_59

    .line 33
    .line 34
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/a;->A(Landroid/view/autofill/AutofillManager;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_59

    .line 39
    .line 40
    invoke-static {v0}, Lcom/getcapacitor/plugin/util/a;->D(Landroid/view/autofill/AutofillManager;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_59

    .line 45
    .line 46
    iget-object v0, p0, Lq2/p0;->l:Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    if-eqz v0, :cond_59

    .line 49
    .line 50
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 51
    .line 52
    if-nez v1, :cond_59

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const/4 v2, 0x0

    .line 59
    if-eqz v1, :cond_4b

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_4b

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_4b

    .line 72
    .line 73
    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 74
    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move-object v1, v2

    .line 77
    :goto_4c
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 78
    .line 79
    iget-object v0, p0, Lq2/p0;->l:Landroid/view/WindowManager$LayoutParams;

    .line 80
    .line 81
    if-eqz v0, :cond_54

    .line 82
    .line 83
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 84
    .line 85
    :cond_54
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    sget-object v0, Lx1/r;->a:Lx1/r;

    .line 89
    .line 90
    :cond_59
    :goto_59
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/app/ProgressDialog;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 20
    .line 21
    if-eqz p1, :cond_24

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const v2, 0x7f0f002e

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    iget-object p1, p0, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 38
    .line 39
    if-eqz p1, :cond_2c

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 43
    .line 44
    .line 45
    :cond_2c
    iget-object p1, p0, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 46
    .line 47
    if-eqz p1, :cond_38

    .line 48
    .line 49
    new-instance v1, Lq2/i0;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lq2/i0;-><init>(Lq2/p0;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 55
    .line 56
    .line 57
    :cond_38
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/widget/FrameLayout;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lq2/p0;->g:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    invoke-virtual {p0}, Lq2/p0;->d()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_54

    .line 79
    .line 80
    const/16 v1, 0x11

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 83
    .line 84
    .line 85
    :cond_54
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_5f

    .line 90
    .line 91
    const/16 v1, 0x10

    .line 92
    .line 93
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 94
    .line 95
    .line 96
    :cond_5f
    new-instance p1, Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    .line 104
    .line 105
    iput-object p1, p0, Lq2/p0;->f:Landroid/widget/ImageView;

    .line 106
    .line 107
    new-instance v1, Ll6/b;

    .line 108
    .line 109
    const/4 v2, 0x1

    .line 110
    invoke-direct {v1, p0, v2}, Ll6/b;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const v1, 0x7f080061

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget-object v1, p0, Lq2/p0;->f:Landroid/widget/ImageView;

    .line 132
    .line 133
    if-eqz v1, :cond_89

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    .line 137
    .line 138
    :cond_89
    iget-object p1, p0, Lq2/p0;->f:Landroid/widget/ImageView;

    .line 139
    .line 140
    if-nez p1, :cond_8e

    .line 141
    .line 142
    goto :goto_92

    .line 143
    :cond_8e
    const/4 v1, 0x4

    .line 144
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :goto_92
    iget-object p1, p0, Lq2/p0;->a:Ljava/lang/String;

    .line 148
    .line 149
    const-string v1, "Required value was null."

    .line 150
    .line 151
    if-eqz p1, :cond_b1

    .line 152
    .line 153
    iget-object p1, p0, Lq2/p0;->f:Landroid/widget/ImageView;

    .line 154
    .line 155
    if-eqz p1, :cond_ab

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    div-int/lit8 p1, p1, 0x2

    .line 166
    .line 167
    add-int/2addr p1, v0

    .line 168
    invoke-virtual {p0, p1}, Lq2/p0;->f(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_b1

    .line 172
    :cond_ab
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 173
    .line 174
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_b1
    :goto_b1
    iget-object p1, p0, Lq2/p0;->g:Landroid/widget/FrameLayout;

    .line 179
    .line 180
    if-eqz p1, :cond_c0

    .line 181
    .line 182
    iget-object v0, p0, Lq2/p0;->f:Landroid/widget/ImageView;

    .line 183
    .line 184
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 185
    .line 186
    const/4 v3, -0x2

    .line 187
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    :cond_c0
    iget-object p1, p0, Lq2/p0;->g:Landroid/widget/FrameLayout;

    .line 194
    .line 195
    if-eqz p1, :cond_c8

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :cond_c8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 202
    .line 203
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lq2/p0;->j:Z

    .line 3
    .line 4
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p1, v0, :cond_1e

    .line 8
    .line 9
    iget-object v0, p0, Lq2/p0;->d:Lq2/o0;

    .line 10
    .line 11
    if-eqz v0, :cond_1b

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1b

    .line 19
    .line 20
    iget-object p1, p0, Lq2/p0;->d:Lq2/o0;

    .line 21
    .line 22
    if-eqz p1, :cond_1a

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 25
    .line 26
    .line 27
    :cond_1a
    return v1

    .line 28
    :cond_1b
    invoke-virtual {p0}, Lq2/p0;->cancel()V

    .line 29
    .line 30
    .line 31
    :cond_1e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final onStart()V
    .registers 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq2/p0;->h:Lq2/m0;

    .line 5
    .line 6
    if-eqz v0, :cond_23

    .line 7
    .line 8
    if-eqz v0, :cond_e

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    .line 17
    .line 18
    if-ne v1, v2, :cond_23

    .line 19
    .line 20
    if-eqz v0, :cond_1b

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v1, v1, [Ljava/lang/Void;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    .line 27
    .line 28
    :cond_1b
    iget-object v0, p0, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 29
    .line 30
    if-eqz v0, :cond_22

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 33
    .line 34
    .line 35
    :cond_22
    return-void

    .line 36
    :cond_23
    invoke-virtual {p0}, Lq2/p0;->d()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onStop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lq2/p0;->h:Lq2/m0;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lq2/p0;->e:Landroid/app/ProgressDialog;

    .line 10
    .line 11
    if-eqz v0, :cond_f

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_f
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 7
    .line 8
    if-nez v0, :cond_b

    .line 9
    .line 10
    iput-object p1, p0, Lq2/p0;->l:Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    :cond_b
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

###### Class q2.i0 (q2.i0)
.class public final synthetic Lq2/i0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lq2/p0;


# direct methods
.method public synthetic constructor <init>(Lq2/p0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq2/i0;->a:Lq2/p0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    iget-object v0, p0, Lq2/i0;->a:Lq2/p0;

    .line 4
    .line 5
    invoke-static {p1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lq2/p0;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
