###### Class l6.b (l6.b)
.class public final synthetic Ll6/b;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View$OnCreateContextMenuListener;I)V
    .registers 3

    .line 1
    iput p2, p0, Ll6/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ll6/b;->b:Landroid/view/View$OnCreateContextMenuListener;

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
    iget p1, p0, Ll6/b;->a:I

    .line 2
    .line 3
    const-string v0, "this$0"

    .line 4
    .line 5
    iget-object v1, p0, Ll6/b;->b:Landroid/view/View$OnCreateContextMenuListener;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_24

    .line 8
    .line 9
    .line 10
    check-cast v1, Ly2/g;

    .line 11
    .line 12
    invoke-static {v0, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ly2/g;->O()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_12
    check-cast v1, Lq2/p0;

    .line 20
    .line 21
    invoke-static {v0, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lq2/p0;->cancel()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_1b
    check-cast v1, Lcom/lottery/app/GameActivity;

    .line 29
    .line 30
    sget p1, Lcom/lottery/app/GameActivity;->e:I

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method
