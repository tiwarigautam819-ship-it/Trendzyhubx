###### Class g.s (g.s)
.class public abstract Lg/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Lg/q;

.field public static final b:I

.field public static c:Lf0/f;

.field public static d:Lf0/f;

.field public static e:Ljava/lang/Boolean;

.field public static f:Z

.field public static final g:Ls/f;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lg/q;

    .line 2
    .line 3
    new-instance v1, Lg/r;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lg/r;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lg/q;-><init>(Lg/r;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lg/s;->a:Lg/q;

    .line 13
    .line 14
    const/16 v0, -0x64

    .line 15
    .line 16
    sput v0, Lg/s;->b:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lg/s;->c:Lf0/f;

    .line 20
    .line 21
    sput-object v0, Lg/s;->d:Lf0/f;

    .line 22
    .line 23
    sput-object v0, Lg/s;->e:Ljava/lang/Boolean;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lg/s;->f:Z

    .line 27
    .line 28
    new-instance v1, Ls/f;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Ls/f;-><init>(I)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lg/s;->g:Ls/f;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lg/s;->h:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v0, Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lg/s;->i:Ljava/lang/Object;

    .line 48
    .line 49
    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 5

    .line 1
    sget-object v0, Lg/s;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_40

    .line 4
    .line 5
    :try_start_4
    sget v0, Lg/k0;->a:I

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x18

    .line 10
    .line 11
    if-lt v0, v1, :cond_13

    .line 12
    .line 13
    invoke-static {}, Lg/j0;->a()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    or-int/lit16 v0, v0, 0x80

    .line 18
    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/16 v0, 0x280

    .line 21
    .line 22
    :goto_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Landroid/content/ComponentName;

    .line 27
    .line 28
    const-class v3, Lg/k0;

    .line 29
    .line 30
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 38
    .line 39
    if-eqz p0, :cond_40

    .line 40
    .line 41
    const-string v0, "autoStoreLocales"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sput-object p0, Lg/s;->e:Ljava/lang/Boolean;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_34} :catch_35

    .line 52
    .line 53
    goto :goto_40

    .line 54
    :catch_35
    const-string p0, "AppCompatDelegate"

    .line 55
    .line 56
    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    .line 57
    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    sput-object p0, Lg/s;->e:Ljava/lang/Boolean;

    .line 64
    .line 65
    :cond_40
    :goto_40
    sget-object p0, Lg/s;->e:Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0
.end method

.method public static g(Lg/f0;)V
    .registers 4

    .line 1
    sget-object v0, Lg/s;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lg/s;->g:Ls/f;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v2, Ls/a;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ls/a;-><init>(Ls/f;)V

    .line 12
    .line 13
    .line 14
    :cond_d
    :goto_d
    invoke-virtual {v2}, Ls/a;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_29

    .line 19
    .line 20
    invoke-virtual {v2}, Ls/a;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lg/s;

    .line 31
    .line 32
    if-eq v1, p0, :cond_23

    .line 33
    .line 34
    if-nez v1, :cond_d

    .line 35
    .line 36
    :cond_23
    invoke-virtual {v2}, Ls/a;->remove()V

    .line 37
    .line 38
    .line 39
    goto :goto_d

    .line 40
    :catchall_27
    move-exception p0

    .line 41
    goto :goto_2b

    .line 42
    :cond_29
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_27

    .line 45
    throw p0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract i(I)Z
.end method

.method public abstract j(I)V
.end method

.method public abstract k(Landroid/view/View;)V
.end method

.method public abstract l(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract m(Ljava/lang/CharSequence;)V
.end method

.method public abstract n(Lk/a;)Lk/b;
.end method
