###### Class org.apache.cordova.j (org.apache.cordova.j)
.class public final Lorg/apache/cordova/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lorg/apache/cordova/j;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/apache/cordova/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 1
    iget p1, p0, Lorg/apache/cordova/j;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    if-ne p2, p1, :cond_12

    .line 8
    .line 9
    iget-object p1, p0, Lorg/apache/cordova/j;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lk1/h;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    const/4 p3, 0x0

    .line 15
    invoke-virtual {p1, p2, p3}, Lk1/h;->C(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p3, 0x1

    .line 20
    :goto_13
    return p3

    .line 21
    :pswitch_14
    const/4 p1, 0x4

    .line 22
    const/4 p3, 0x1

    .line 23
    if-ne p2, p1, :cond_21

    .line 24
    .line 25
    iget-object p1, p0, Lorg/apache/cordova/j;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lo5/c;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p1, p2, p3}, Lo5/c;->o(Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    const/4 p3, 0x0

    .line 34
    :cond_21
    return p3

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch
.end method
