###### Class k.d (k.d)
.class public final Lk/d;
.super Landroid/content/ContextWrapper;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static f:Landroid/content/res/Configuration;


# instance fields
.field public a:I

.field public b:Landroid/content/res/Resources$Theme;

.field public c:Landroid/view/LayoutInflater;

.field public d:Landroid/content/res/Configuration;

.field public e:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lk/d;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lk/d;->e:Landroid/content/res/Resources;

    .line 2
    .line 3
    if-nez v0, :cond_18

    .line 4
    .line 5
    iget-object v0, p0, Lk/d;->d:Landroid/content/res/Configuration;

    .line 6
    .line 7
    if-nez v0, :cond_10

    .line 8
    .line 9
    new-instance v0, Landroid/content/res/Configuration;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lk/d;->d:Landroid/content/res/Configuration;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "Override configuration has already been set"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "getResources() or getAssets() has already been called"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lk/d;->b:Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    if-nez v0, :cond_1d

    .line 4
    .line 5
    invoke-virtual {p0}, Lk/d;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lk/d;->b:Landroid/content/res/Resources$Theme;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1d

    .line 24
    .line 25
    iget-object v1, p0, Lk/d;->b:Landroid/content/res/Resources$Theme;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    iget-object v0, p0, Lk/d;->b:Landroid/content/res/Resources$Theme;

    .line 31
    .line 32
    iget v1, p0, Lk/d;->a:I

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lk/d;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4

    .line 1
    iget-object v0, p0, Lk/d;->e:Landroid/content/res/Resources;

    .line 2
    .line 3
    if-nez v0, :cond_38

    .line 4
    .line 5
    iget-object v0, p0, Lk/d;->d:Landroid/content/res/Configuration;

    .line 6
    .line 7
    if-eqz v0, :cond_32

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1a

    .line 12
    .line 13
    if-lt v1, v2, :cond_25

    .line 14
    .line 15
    sget-object v1, Lk/d;->f:Landroid/content/res/Configuration;

    .line 16
    .line 17
    if-nez v1, :cond_1c

    .line 18
    .line 19
    new-instance v1, Landroid/content/res/Configuration;

    .line 20
    .line 21
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 26
    .line 27
    sput-object v1, Lk/d;->f:Landroid/content/res/Configuration;

    .line 28
    .line 29
    :cond_1c
    sget-object v1, Lk/d;->f:Landroid/content/res/Configuration;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_25

    .line 36
    .line 37
    goto :goto_32

    .line 38
    :cond_25
    iget-object v0, p0, Lk/d;->d:Landroid/content/res/Configuration;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lk/d;->e:Landroid/content/res/Resources;

    .line 49
    .line 50
    goto :goto_38

    .line 51
    :cond_32
    :goto_32
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lk/d;->e:Landroid/content/res/Resources;

    .line 56
    .line 57
    :cond_38
    :goto_38
    iget-object v0, p0, Lk/d;->e:Landroid/content/res/Resources;

    .line 58
    .line 59
    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-string v0, "layout_inflater"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1d

    .line 8
    .line 9
    iget-object p1, p0, Lk/d;->c:Landroid/view/LayoutInflater;

    .line 10
    .line 11
    if-nez p1, :cond_1a

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lk/d;->c:Landroid/view/LayoutInflater;

    .line 26
    .line 27
    :cond_1a
    iget-object p1, p0, Lk/d;->c:Landroid/view/LayoutInflater;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1d
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 1
    iget-object v0, p0, Lk/d;->b:Landroid/content/res/Resources$Theme;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_5
    iget v0, p0, Lk/d;->a:I

    .line 7
    .line 8
    if-nez v0, :cond_e

    .line 9
    .line 10
    const v0, 0x7f100118

    .line 11
    .line 12
    .line 13
    iput v0, p0, Lk/d;->a:I

    .line 14
    .line 15
    :cond_e
    invoke-virtual {p0}, Lk/d;->b()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lk/d;->b:Landroid/content/res/Resources$Theme;

    .line 19
    .line 20
    return-object v0
.end method

.method public final setTheme(I)V
    .registers 3

    .line 1
    iget v0, p0, Lk/d;->a:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_9

    .line 4
    .line 5
    iput p1, p0, Lk/d;->a:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lk/d;->b()V

    .line 8
    .line 9
    .line 10
    :cond_9
    return-void
.end method
