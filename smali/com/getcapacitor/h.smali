###### Class com.getcapacitor.h (com.getcapacitor.h)
.class public final synthetic Lcom/getcapacitor/h;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/webkit/JsResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsResult;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/getcapacitor/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/getcapacitor/h;->b:Landroid/webkit/JsResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/getcapacitor/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/h;->b:Landroid/webkit/JsResult;

    .line 7
    .line 8
    check-cast v0, Landroid/webkit/JsPromptResult;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->e(Landroid/webkit/JsPromptResult;Landroid/content/DialogInterface;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Lcom/getcapacitor/h;->b:Landroid/webkit/JsResult;

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->f(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lcom/getcapacitor/h;->b:Landroid/webkit/JsResult;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->l(Landroid/webkit/JsResult;Landroid/content/DialogInterface;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method
