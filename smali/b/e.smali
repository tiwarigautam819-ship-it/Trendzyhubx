###### Class b.e (b.e)
.class public final synthetic Lb/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lb/e;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lb/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .registers 4

    .line 1
    iget v0, p0, Lb/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lb/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Le1/e;

    .line 9
    .line 10
    const-string v0, "this$0"

    .line 11
    .line 12
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    .line 16
    .line 17
    if-ne p2, v0, :cond_16

    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    iput-boolean p2, p1, Le1/e;->f:Z

    .line 21
    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 24
    .line 25
    if-ne p2, v0, :cond_1d

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p1, Le1/e;->f:Z

    .line 29
    .line 30
    :cond_1d
    :goto_1d
    return-void

    .line 31
    :pswitch_1e
    iget-object v0, p0, Lb/e;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroidx/fragment/app/h0;

    .line 34
    .line 35
    invoke-static {v0, p1, p2}, Lb/p;->b(Landroidx/fragment/app/h0;Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_26
    iget-object p1, p0, Lb/e;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/fragment/app/h0;

    .line 42
    .line 43
    sget-object v0, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 44
    .line 45
    if-ne p2, v0, :cond_3d

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_3d

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3d

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 60
    .line 61
    .line 62
    :cond_3d
    return-void

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
