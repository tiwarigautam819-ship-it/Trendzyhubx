###### Class com.getcapacitor.q (com.getcapacitor.q)
.class public final synthetic Lcom/getcapacitor/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ld/b;
.implements Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Lcom/getcapacitor/q;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/getcapacitor/q;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/getcapacitor/q;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/getcapacitor/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/q;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/getcapacitor/Plugin;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/getcapacitor/q;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/lang/reflect/Method;

    .line 13
    .line 14
    check-cast p1, Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/getcapacitor/Plugin;->b(Lcom/getcapacitor/Plugin;Ljava/lang/reflect/Method;Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lcom/getcapacitor/q;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/getcapacitor/Plugin;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/getcapacitor/q;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/lang/reflect/Method;

    .line 27
    .line 28
    check-cast p1, Ld/a;

    .line 29
    .line 30
    invoke-static {v0, v1, p1}, Lcom/getcapacitor/Plugin;->a(Lcom/getcapacitor/Plugin;Ljava/lang/reflect/Method;Ld/a;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public onActivityResult(Ld/a;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/getcapacitor/q;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/getcapacitor/q;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/webkit/ValueCallback;

    .line 8
    .line 9
    invoke-static {v0, v1, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->n(Landroid/net/Uri;Landroid/webkit/ValueCallback;Ld/a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
