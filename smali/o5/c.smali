###### Class o5.c (o5.c)
.class public Lo5/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ld/b;
.implements Ly5/d;
.implements Ll/l;
.implements Lg0/b;
.implements Lh3/b;
.implements Lj0/e;
.implements Lk1/m;
.implements Lm6/e;
.implements Lm/j;
.implements Ls5/n;


# static fields
.field public static volatile c:Lo5/c;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    iput p1, p0, Lo5/c;->a:I

    sparse-switch p1, :sswitch_data_36

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void

    .line 19
    :sswitch_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 20
    :sswitch_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void

    .line 22
    :sswitch_1f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void

    .line 24
    :sswitch_2a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Lf6/f;

    const/4 v0, 0x0

    .line 26
    invoke-direct {p1, v0}, Lf6/f;-><init>(I)V

    .line 27
    iput-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void

    :sswitch_data_36
    .sparse-switch
        0x6 -> :sswitch_2a
        0x18 -> :sswitch_1f
        0x1a -> :sswitch_14
        0x1c -> :sswitch_10
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lo5/c;->a:I

    iput-object p2, p0, Lo5/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lo5/c;->a:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    iput-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 11

    const/16 v0, 0x16

    iput v0, p0, Lo5/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_e
    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Landroidx/fragment/app/m1;->h(I)[I

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    const/4 v6, 0x1

    if-ge v5, v3, :cond_32

    aget v7, v1, v5

    if-eq v7, v6, :cond_2a

    if-ne v7, v0, :cond_28

    .line 7
    const-string v6, "join_tournament"

    goto :goto_2c

    :cond_28
    const/4 p1, 0x0

    throw p1

    :cond_2a
    const-string v6, "context_choose"

    .line 8
    :goto_2c
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 9
    :cond_32
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/dialog/"

    if-eqz v0, :cond_55

    .line 10
    sget-object v0, Lx1/r;->a:Lx1/r;

    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "fb.gg"

    aput-object v2, v0, v4

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {v0, p2, p1}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_73

    .line 13
    :cond_55
    invoke-static {}, Lq2/g0;->p()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lx1/r;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-static {v0, p2, p1}, Lq2/g0;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 16
    :goto_73
    iput-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/ContentInfo;)V
    .registers 3

    const/16 v0, 0xd

    iput v0, p0, Lo5/c;->a:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/l0;->f(Ljava/lang/Object;)Landroid/view/ContentInfo;

    move-result-object p1

    iput-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    const/16 v0, 0x17

    iput v0, p0, Lo5/c;->a:I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/y4;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ClipData;
    .registers 2

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l0;->b(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public c(Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1
    const-string v3, "query = ?"

    .line 2
    .line 3
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/ContentProviderClient;

    .line 6
    .line 7
    const/4 v7, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    return-object v7

    .line 11
    :cond_a
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v4, p3

    .line 16
    :try_start_f
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    .line 20
    return-object p1

    .line 21
    :catch_14
    move-exception v0

    .line 22
    move-object p1, v0

    .line 23
    const-string p2, "FontsProvider"

    .line 24
    .line 25
    const-string p3, "Unable to query the content provider"

    .line 26
    .line 27
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    return-object v7
.end method

.method public close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    if-eqz v0, :cond_1d

    .line 6
    .line 7
    instance-of v1, v0, Ljava/lang/AutoCloseable;

    .line 8
    .line 9
    if-eqz v1, :cond_10

    .line 10
    .line 11
    check-cast v0, Ljava/lang/AutoCloseable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_10
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    if-eqz v1, :cond_1a

    .line 20
    .line 21
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/getcapacitor/a;->v(Ljava/util/concurrent/ExecutorService;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .registers 3

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->createWebView(Landroid/webkit/WebView;)Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lh8/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 16
    .line 17
    return-object p1
.end method

.method public d(Ll/n;Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    iget p1, p0, Lo5/c;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_36

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->I:Lm/j;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_32

    .line 14
    .line 15
    check-cast p1, Lo5/c;

    .line 16
    .line 17
    iget-object p1, p1, Lo5/c;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 20
    .line 21
    iget-object v1, p1, Landroidx/appcompat/widget/Toolbar;->O:Lj0/l;

    .line 22
    .line 23
    invoke-virtual {v1}, Lj0/l;->a()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v1, :cond_1f

    .line 29
    .line 30
    move p1, v2

    .line 31
    goto :goto_2f

    .line 32
    :cond_1f
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->Q:Lm/b3;

    .line 33
    .line 34
    if-eqz p1, :cond_2e

    .line 35
    .line 36
    check-cast p1, Lg/l0;

    .line 37
    .line 38
    iget-object p1, p1, Lg/l0;->a:Lg/n0;

    .line 39
    .line 40
    iget-object p1, p1, Lg/n0;->b:Landroid/view/Window$Callback;

    .line 41
    .line 42
    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move p1, v0

    .line 48
    :goto_2f
    if-eqz p1, :cond_32

    .line 49
    .line 50
    move v0, v2

    .line 51
    :cond_32
    return v0

    .line 52
    :pswitch_33
    const/4 p1, 0x0

    .line 53
    return p1

    .line 54
    nop

    .line 55
    :pswitch_data_36
    .packed-switch 0x7
        :pswitch_33
    .end packed-switch
.end method

.method public e(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Ld/a;

    .line 2
    .line 3
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/y0;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/fragment/app/y0;->F:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/fragment/app/u0;

    .line 14
    .line 15
    const-string v2, "FragmentManager"

    .line 16
    .line 17
    if-nez v1, :cond_24

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "No Activities were started for result for "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_24
    iget-object v3, v1, Landroidx/fragment/app/u0;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget v1, v1, Landroidx/fragment/app/u0;->b:I

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Lcom/google/firebase/messaging/y;->n(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_42

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Activity result delivered for unknown Fragment "

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_42
    iget v2, p1, Ld/a;->a:I

    .line 68
    .line 69
    iget-object p1, p1, Ld/a;->b:Landroid/content/Intent;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2, p1}, Landroidx/fragment/app/c0;->o(IILandroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\u6253\u5370adid"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TomBridge"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_1d

    .line 21
    .line 22
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lbridges/TomBridge;

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {v0, v1, p1}, Lbridges/TomBridge;->f(Lbridges/TomBridge;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1d
    return-void
.end method

.method public g()I
    .registers 2

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l0;->a(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lo5/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lq6/a;

    .line 9
    .line 10
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/Context;

    .line 15
    .line 16
    sget v1, Lm3/j;->d:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    new-instance v2, Lm3/j;

    .line 27
    .line 28
    const-string v3, "com.google.android.datatransport.events"

    .line 29
    .line 30
    invoke-direct {v2, v0, v1, v3}, Lm3/j;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :pswitch_21
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 35
    .line 36
    return-object v0

    .line 37
    :pswitch_data_24
    .packed-switch 0xc
        :pswitch_21
    .end packed-switch
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .registers 3

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 4
    .line 5
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lh8/b;->b(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    .line 16
    .line 17
    return-object v0
.end method

.method public h(Ll/n;)V
    .registers 6

    .line 1
    iget v0, p0, Lo5/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_34

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->D:Ll/l;

    .line 11
    .line 12
    if-eqz v0, :cond_10

    .line 13
    .line 14
    invoke-interface {v0, p1}, Ll/l;->h(Ll/n;)V

    .line 15
    .line 16
    .line 17
    :cond_10
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lg/n0;

    .line 21
    .line 22
    iget-object v1, v0, Lg/n0;->b:Landroid/view/Window$Callback;

    .line 23
    .line 24
    iget-object v0, v0, Lg/n0;->a:Landroidx/appcompat/widget/i;

    .line 25
    .line 26
    iget-object v0, v0, Landroidx/appcompat/widget/i;->a:Landroidx/appcompat/widget/Toolbar;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->o()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/16 v2, 0x6c

    .line 33
    .line 34
    if-eqz v0, :cond_27

    .line 35
    .line 36
    invoke-interface {v1, v2, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 37
    .line 38
    .line 39
    goto :goto_32

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-interface {v1, v0, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_32

    .line 47
    .line 48
    invoke-interface {v1, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 49
    .line 50
    .line 51
    :cond_32
    :goto_32
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_34
    .packed-switch 0x7
        :pswitch_11
    .end packed-switch
.end method

.method public i()Landroid/view/ContentInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    return-object v0
.end method

.method public j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;
    .registers 5

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-ne p2, v0, :cond_19

    .line 4
    .line 5
    iget-object p2, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p2, Lf6/f;

    .line 8
    .line 9
    const-string v0, "0"

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    invoke-virtual {p2, p1, v0, p3}, Lf6/f;->j(Ljava/lang/String;ILjava/util/EnumMap;)Lb6/b;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p3, "Can only encode UPC-A, but got "

    .line 29
    .line 30
    invoke-static {p2}, Lq2/x;->n(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public declared-synchronized k(Lr7/x;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    const-string v0, "route"

    .line 3
    .line 4
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public l()I
    .registers 2

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ContentInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l0;->j(Landroid/view/ContentInfo;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public m()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/reflect/Type;

    .line 4
    .line 5
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    const-string v2, "Invalid EnumSet type: "

    .line 8
    .line 9
    if-eqz v1, :cond_35

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v3, 0x0

    .line 19
    aget-object v1, v1, v3

    .line 20
    .line 21
    instance-of v3, v1, Ljava/lang/Class;

    .line 22
    .line 23
    if-eqz v3, :cond_1f

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Class;

    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0

    .line 32
    :cond_1f
    new-instance v1, Landroidx/fragment/app/a0;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v1

    .line 54
    :cond_35
    new-instance v1, Landroidx/fragment/app/a0;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v1
.end method

.method public n()Ljava/util/Set;
    .registers 3

    .line 1
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashSet;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    .line 18
    throw v1
.end method

.method public o(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget v0, p0, Lo5/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/webkit/JsPromptResult;

    .line 9
    .line 10
    if-eqz p2, :cond_f

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 17
    .line 18
    .line 19
    :goto_12
    return-void

    .line 20
    :pswitch_13
    iget-object p1, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/webkit/JsResult;

    .line 23
    .line 24
    if-eqz p2, :cond_1d

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    .line 27
    .line 28
    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    .line 31
    .line 32
    .line 33
    :goto_20
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0xa
        :pswitch_13
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    iget v0, p0, Lo5/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "ContentInfoCompat{"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lo5/c;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroid/view/ContentInfo;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "}"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_data_22
    .packed-switch 0xd
        :pswitch_a
    .end packed-switch
.end method
