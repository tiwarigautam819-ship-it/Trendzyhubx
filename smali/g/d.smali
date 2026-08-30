###### Class g.d (g.d)
.class public final Lg/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lg/d;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lg/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget p1, p0, Lg/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_30

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lg/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/appcompat/widget/Toolbar;->U:Landroidx/appcompat/widget/h;

    .line 11
    .line 12
    if-nez p1, :cond_f

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_11

    .line 16
    :cond_f
    iget-object p1, p1, Landroidx/appcompat/widget/h;->b:Ll/p;

    .line 17
    .line 18
    :goto_11
    if-eqz p1, :cond_16

    .line 19
    .line 20
    invoke-virtual {p1}, Ll/p;->collapseActionView()Z

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void

    .line 24
    :pswitch_17
    iget-object p1, p0, Lg/d;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lk/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lk/b;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1f
    iget-object p1, p0, Lg/d;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Lg/i;

    .line 35
    .line 36
    iget-object v0, p1, Lg/i;->v:Lg/g;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    iget-object p1, p1, Lg/i;->b:Lg/k;

    .line 40
    .line 41
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_17
    .end packed-switch
.end method
