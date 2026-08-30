###### Class l1.a (l1.a)
.class public final synthetic Ll1/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ln6/a;
.implements LeventTrack/jpush/EngagelabInitManager$TokenCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lbridges/TomBridge;


# direct methods
.method public synthetic constructor <init>(Lbridges/TomBridge;I)V
    .registers 3

    .line 1
    iput p2, p0, Ll1/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll1/a;->b:Lbridges/TomBridge;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onToken(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget v0, p0, Ll1/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll1/a;->b:Lbridges/TomBridge;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lbridges/TomBridge;->c(Lbridges/TomBridge;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Ll1/a;->b:Lbridges/TomBridge;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lbridges/TomBridge;->d(Lbridges/TomBridge;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Ll1/a;->b:Lbridges/TomBridge;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lbridges/TomBridge;->e(Lbridges/TomBridge;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_17
    iget-object v0, p0, Ll1/a;->b:Lbridges/TomBridge;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lbridges/TomBridge;->a(Lbridges/TomBridge;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
