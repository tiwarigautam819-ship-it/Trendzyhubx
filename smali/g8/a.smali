###### Class g8.a (g8.a)
.class public final Lg8/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lorg/apache/cordova/h;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/h;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg8/a;->a:Lorg/apache/cordova/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public exec(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lg8/a;->a:Lorg/apache/cordova/h;

    .line 2
    .line 3
    move v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/h;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public retrieveJsMessages(IZ)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lg8/a;->a:Lorg/apache/cordova/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/cordova/h;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_a

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_a
    iget-object p1, v0, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lorg/apache/cordova/i0;->d(Z)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public setNativeToJsBridgeMode(II)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lg8/a;->a:Lorg/apache/cordova/h;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/cordova/h;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_9

    .line 8
    .line 9
    return-void

    .line 10
    :cond_9
    iget-object p1, v0, Lorg/apache/cordova/h;->b:Lorg/apache/cordova/i0;

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Lorg/apache/cordova/i0;->f(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
