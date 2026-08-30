###### Class com.getcapacitor.g (com.getcapacitor.g)
.class public final synthetic Lcom/getcapacitor/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/webkit/JsResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsResult;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/getcapacitor/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/getcapacitor/g;->b:Landroid/webkit/JsResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/getcapacitor/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/g;->b:Landroid/webkit/JsResult;

    .line 7
    .line 8
    check-cast v0, Landroid/webkit/JsPromptResult;

    .line 9
    .line 10
    invoke-static {v0, p1, p2}, Lcom/getcapacitor/BridgeWebChromeClient;->b(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lcom/getcapacitor/g;->b:Landroid/webkit/JsResult;

    .line 15
    .line 16
    invoke-static {v0, p1, p2}, Lcom/getcapacitor/BridgeWebChromeClient;->g(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lcom/getcapacitor/g;->b:Landroid/webkit/JsResult;

    .line 21
    .line 22
    invoke-static {v0, p1, p2}, Lcom/getcapacitor/BridgeWebChromeClient;->h(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_19
    iget-object v0, p0, Lcom/getcapacitor/g;->b:Landroid/webkit/JsResult;

    .line 27
    .line 28
    invoke-static {v0, p1, p2}, Lcom/getcapacitor/BridgeWebChromeClient;->c(Landroid/webkit/JsResult;Landroid/content/DialogInterface;I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method
