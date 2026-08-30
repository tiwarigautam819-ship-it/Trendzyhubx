###### Class com.getcapacitor.CapacitorWebView (com.getcapacitor.CapacitorWebView)
.class public Lcom/getcapacitor/CapacitorWebView;
.super Landroid/webkit/WebView;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field private bridge:Lcom/getcapacitor/Bridge;

.field private capInputConnection:Landroid/view/inputmethod/BaseInputConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lj0/b1;)Lj0/b1;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/getcapacitor/CapacitorWebView;->lambda$edgeToEdgeHandler$0(Landroid/view/View;Lj0/b1;)Lj0/b1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static lambda$edgeToEdgeHandler$0(Landroid/view/View;Lj0/b1;)Lj0/b1;
    .registers 4

    .line 1
    const/16 v0, 0x87

    .line 2
    .line 3
    iget-object p1, p1, Lj0/b1;->a:Lj0/z0;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lj0/z0;->f(I)Lc0/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    iget v1, p1, Lc0/c;->a:I

    .line 16
    .line 17
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 18
    .line 19
    iget v1, p1, Lc0/c;->d:I

    .line 20
    .line 21
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 22
    .line 23
    iget v1, p1, Lc0/c;->c:I

    .line 24
    .line 25
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    .line 27
    iget p1, p1, Lc0/c;->b:I

    .line 28
    .line 29
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lj0/b1;->b:Lj0/b1;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_24

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "document.activeElement.value = document.activeElement.value + \'"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "\';"

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return p1

    .line 37
    :cond_24
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1
.end method

.method public edgeToEdgeHandler(Lcom/getcapacitor/Bridge;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/getcapacitor/CapConfig;->adjustMarginsForEdgeToEdge()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "disable"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    goto :goto_4d

    .line 18
    :cond_11
    const-string v0, "force"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x23

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    if-lt v1, v2, :cond_47

    .line 30
    .line 31
    const-string v1, "auto"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_47

    .line 38
    .line 39
    new-instance p1, Landroid/util/TypedValue;

    .line 40
    .line 41
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const v2, 0x101069a

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-virtual {v1, v2, p1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 61
    .line 62
    if-eqz p1, :cond_41

    .line 63
    .line 64
    move p1, v4

    .line 65
    goto :goto_42

    .line 66
    :cond_41
    move p1, v3

    .line 67
    :goto_42
    if-eqz v1, :cond_48

    .line 68
    .line 69
    if-nez p1, :cond_47

    .line 70
    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v4, v3

    .line 73
    :cond_48
    :goto_48
    if-nez v0, :cond_4e

    .line 74
    .line 75
    if-eqz v4, :cond_4d

    .line 76
    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    :goto_4d
    return-void

    .line 79
    :cond_4e
    :goto_4e
    new-instance p1, Lcom/getcapacitor/n;

    .line 80
    .line 81
    invoke-direct {p1, v3}, Lcom/getcapacitor/n;-><init>(I)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 85
    .line 86
    invoke-static {p0, p1}, Lj0/d0;->i(Landroid/view/View;Lj0/r;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/CapacitorWebView;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getConfig()Lcom/getcapacitor/CapConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_11

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/getcapacitor/CapConfig;->loadDefault(Landroid/content/Context;)Lcom/getcapacitor/CapConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_11
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isInputCaptured()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_26

    .line 23
    .line 24
    iget-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->capInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    .line 25
    .line 26
    if-nez p1, :cond_23

    .line 27
    .line 28
    new-instance p1, Landroid/view/inputmethod/BaseInputConnection;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, p0, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->capInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    .line 35
    .line 36
    :cond_23
    iget-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->capInputConnection:Landroid/view/inputmethod/BaseInputConnection;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_26
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public setBridge(Lcom/getcapacitor/Bridge;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/getcapacitor/CapacitorWebView;->bridge:Lcom/getcapacitor/Bridge;

    .line 2
    .line 3
    return-void
.end method
