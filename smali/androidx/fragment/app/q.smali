###### Class androidx.fragment.app.q (androidx.fragment.app.q)
.class public final Landroidx/fragment/app/q;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/fragment/app/q;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/q;->b:Ljava/lang/Object;

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
    .registers 4

    .line 1
    iget p1, p0, Landroidx/fragment/app/q;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_26

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/fragment/app/q;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lk1/h;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1, v0}, Lk1/h;->C(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget-object p1, p0, Landroidx/fragment/app/q;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Lo5/c;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Lo5/c;->o(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_19
    iget-object p1, p0, Landroidx/fragment/app/q;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroidx/fragment/app/t;

    .line 29
    .line 30
    iget-object v0, p1, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 31
    .line 32
    if-eqz v0, :cond_24

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/fragment/app/t;->onCancel(Landroid/content/DialogInterface;)V

    .line 35
    .line 36
    .line 37
    :cond_24
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_19
        :pswitch_f
    .end packed-switch
.end method
