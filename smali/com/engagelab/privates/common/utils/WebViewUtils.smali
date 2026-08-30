###### Class com.engagelab.privates.common.utils.WebViewUtils (com.engagelab.privates.common.utils.WebViewUtils)
.class public Lcom/engagelab/privates/common/utils/WebViewUtils;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final SET_ALLOW_FILE_ACCESS:[B

.field private static final SET_JAVA_SCRIPT_ENABLED:[B

.field private static final WEB_SETTINGS:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_1c

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/engagelab/privates/common/utils/WebViewUtils;->WEB_SETTINGS:[B

    .line 9
    .line 10
    const/16 v0, 0x12

    .line 11
    .line 12
    new-array v0, v0, [B

    .line 13
    .line 14
    fill-array-data v0, :array_2e

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/engagelab/privates/common/utils/WebViewUtils;->SET_ALLOW_FILE_ACCESS:[B

    .line 18
    .line 19
    const/16 v0, 0x14

    .line 20
    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    fill-array-data v0, :array_3c

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/engagelab/privates/common/utils/WebViewUtils;->SET_JAVA_SCRIPT_ENABLED:[B

    .line 27
    .line 28
    return-void

    .line 29
    :array_1c
    .array-data 1
        0x69t
        0x78t
        0x75t
        0x42t
        0x4ft
        0x70t
        0x6ct
        0x38t
        0x66t
        0x55t
        0x42t
        0x72t
        0x61t
        0x62t
        0x3ft
        0x67t
        0x45t
        0x7bt
        0x5bt
        0x73t
        0x65t
        0x44t
        0x49t
        0x77t
        0x6ft
        0x65t
    .end array-data

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    nop

    .line 47
    :array_2e
    .array-data 1
        0x53t
        0x7ct
        0x7ct
        0x57t
        0x7dt
        0x5ct
        0x4ft
        0x6et
        0x4et
        0x7ft
        0x7dt
        0x55t
        0x61t
        0x7at
        0x6bt
        0x73t
        0x62t
        0x43t
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    nop

    .line 61
    :array_3c
    .array-data 1
        0x7bt
        0x73t
        0x65t
        0x7at
        0x41t
        0x6ft
        0x69t
        0x45t
        0x72t
        0x42t
        0x49t
        0x69t
        0x7ct
        0x53t
        0x7ft
        0x51t
        0x42t
        0x75t
        0x6dt
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fixSecure(Landroid/webkit/WebView;)V
    .registers 3

    .line 1
    :try_start_0
    const-string v0, "searchBoxJavaBridge_"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "accessibility"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "accessibilityTraversal"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_18
    new-instance v0, Lcom/engagelab/privates/common/utils/WebViewUtils$a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/engagelab/privates/common/utils/WebViewUtils$a;-><init>(Landroid/webkit/WebView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static setAllowFileAccess(Landroid/webkit/WebSettings;)V
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 3
    .line 4
    .line 5
    sget-object v1, Lcom/engagelab/privates/common/utils/WebViewUtils;->WEB_SETTINGS:[B

    .line 6
    .line 7
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-object v2, Lcom/engagelab/privates/common/utils/WebViewUtils;->SET_ALLOW_FILE_ACCESS:[B

    .line 16
    .line 17
    invoke-static {v2}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v4, v3, [Ljava/lang/Class;

    .line 23
    .line 24
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v5, v4, v0

    .line 27
    .line 28
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-array v2, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    aput-object v3, v2, v0

    .line 37
    .line 38
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_28

    .line 39
    .line 40
    .line 41
    :catchall_28
    return-void
.end method

.method public static setJavaScriptEnabled(Landroid/webkit/WebSettings;)V
    .registers 7

    .line 1
    :try_start_0
    sget-object v0, Lcom/engagelab/privates/common/utils/WebViewUtils;->WEB_SETTINGS:[B

    .line 2
    .line 3
    invoke-static {v0}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/engagelab/privates/common/utils/WebViewUtils;->SET_JAVA_SCRIPT_ENABLED:[B

    .line 12
    .line 13
    invoke-static {v1}, Lcom/engagelab/privates/common/utils/Guard;->string([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    new-array v3, v2, [Ljava/lang/Class;

    .line 19
    .line 20
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v4, v3, v5

    .line 24
    .line 25
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-array v1, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    .line 33
    aput-object v2, v1, v5

    .line 34
    .line 35
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_25

    .line 36
    .line 37
    .line 38
    :catchall_25
    return-void
.end method

.method public static webSettings(Landroid/webkit/WebSettings;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/WebViewUtils;->setJavaScriptEnabled(Landroid/webkit/WebSettings;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "UTF-8"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-virtual {p0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

###### Class com.engagelab.privates.common.utils.WebViewUtils.a (com.engagelab.privates.common.utils.WebViewUtils$a)
.class public final Lcom/engagelab/privates/common/utils/WebViewUtils$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/utils/WebViewUtils;->fixSecure(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/engagelab/privates/common/utils/WebViewUtils$a;->a:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-object p1, p0, Lcom/engagelab/privates/common/utils/WebViewUtils$a;->a:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3d

    .line 8
    .line 9
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_3d

    .line 13
    const-string v0, "removeJavascriptInterface"

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :try_start_f
    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v3, Ljava/lang/String;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    aput-object v3, v2, v4

    .line 22
    .line 23
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_3d

    .line 28
    .line 29
    iget-object v0, p0, Lcom/engagelab/privates/common/utils/WebViewUtils$a;->a:Landroid/webkit/WebView;

    .line 30
    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 32
    .line 33
    const-string v3, "searchBoxJavaBridge_"

    .line 34
    .line 35
    aput-object v3, v2, v4

    .line 36
    .line 37
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/engagelab/privates/common/utils/WebViewUtils$a;->a:Landroid/webkit/WebView;

    .line 41
    .line 42
    new-array v2, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    const-string v3, "accessibility"

    .line 45
    .line 46
    aput-object v3, v2, v4

    .line 47
    .line 48
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/engagelab/privates/common/utils/WebViewUtils$a;->a:Landroid/webkit/WebView;

    .line 52
    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    .line 55
    const-string v2, "accessibilityTraversal"

    .line 56
    .line 57
    aput-object v2, v1, v4

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3d

    .line 60
    .line 61
    .line 62
    :catchall_3d
    :cond_3d
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 1
    return-void
.end method
