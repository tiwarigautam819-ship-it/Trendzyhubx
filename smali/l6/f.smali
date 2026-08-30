###### Class l6.f (l6.f)
.class public final synthetic Ll6/f;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Ll6/f;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ll6/f;->b:Ljava/lang/Object;

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
    iget p1, p0, Ll6/f;->a:I

    .line 2
    .line 3
    iget-object p2, p0, Ll6/f;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_2a

    .line 6
    .line 7
    .line 8
    check-cast p2, Ly2/g;

    .line 9
    .line 10
    const-string p1, "this$0"

    .line 11
    .line 12
    invoke-static {p1, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p2, p1}, Ly2/g;->N(Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p2, Landroidx/fragment/app/t;->o0:Landroid/app/Dialog;

    .line 21
    .line 22
    if-eqz v0, :cond_1a

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    :cond_1a
    iget-object p1, p2, Ly2/g;->D0:Ly2/m;

    .line 28
    .line 29
    if-eqz p1, :cond_21

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ly2/g;->U(Ly2/m;)V

    .line 32
    .line 33
    .line 34
    :cond_21
    return-void

    .line 35
    :pswitch_22
    check-cast p2, Lcom/lottery/app/MainActivity;

    .line 36
    .line 37
    sget p1, Lcom/lottery/app/MainActivity;->g:I

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method
