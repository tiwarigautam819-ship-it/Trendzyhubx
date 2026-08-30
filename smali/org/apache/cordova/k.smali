###### Class org.apache.cordova.k (org.apache.cordova.k)
.class public final Lorg/apache/cordova/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lk1/h;


# direct methods
.method public synthetic constructor <init>(Lk1/h;I)V
    .registers 3

    .line 1
    iput p2, p0, Lorg/apache/cordova/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/apache/cordova/k;->b:Lk1/h;

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
    iget p1, p0, Lorg/apache/cordova/k;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_16

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    const/4 p2, 0x0

    .line 8
    iget-object v0, p0, Lorg/apache/cordova/k;->b:Lk1/h;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p1}, Lk1/h;->C(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    const/4 p1, 0x1

    .line 15
    const/4 p2, 0x0

    .line 16
    iget-object v0, p0, Lorg/apache/cordova/k;->b:Lk1/h;

    .line 17
    .line 18
    invoke-virtual {v0, p2, p1}, Lk1/h;->C(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
