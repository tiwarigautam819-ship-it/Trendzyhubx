###### Class com.getcapacitor.e (com.getcapacitor.e)
.class public final synthetic Lcom/getcapacitor/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/getcapacitor/Bridge;


# direct methods
.method public synthetic constructor <init>(Lcom/getcapacitor/Bridge;I)V
    .registers 3

    .line 1
    iput p2, p0, Lcom/getcapacitor/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/getcapacitor/e;->b:Lcom/getcapacitor/Bridge;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/getcapacitor/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/getcapacitor/e;->b:Lcom/getcapacitor/Bridge;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/getcapacitor/Bridge;->c(Lcom/getcapacitor/Bridge;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Lcom/getcapacitor/e;->b:Lcom/getcapacitor/Bridge;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/getcapacitor/Bridge;->d(Lcom/getcapacitor/Bridge;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Lcom/getcapacitor/e;->b:Lcom/getcapacitor/Bridge;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/getcapacitor/Bridge;->b(Lcom/getcapacitor/Bridge;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
