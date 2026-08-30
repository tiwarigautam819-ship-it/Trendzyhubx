###### Class com.getcapacitor.f (com.getcapacitor.f)
.class public final synthetic Lcom/getcapacitor/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/getcapacitor/BridgeWebChromeClient$ActivityResultListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/ValueCallback;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/getcapacitor/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/getcapacitor/f;->b:Landroid/webkit/ValueCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onActivityResult(Ld/a;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/getcapacitor/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/f;->b:Landroid/webkit/ValueCallback;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->o(Landroid/webkit/ValueCallback;Ld/a;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Lcom/getcapacitor/f;->b:Landroid/webkit/ValueCallback;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/getcapacitor/BridgeWebChromeClient;->j(Landroid/webkit/ValueCallback;Ld/a;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch
.end method
