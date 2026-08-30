###### Class m.u1 (m.u1)
.class public final Lm/u1;
.super Landroid/database/DataSetObserver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lm/u1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lm/u1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 3

    .line 1
    iget v0, p0, Lm/u1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm/u1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lm/u2;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Ln0/a;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Lm/u2;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    iget-object v0, p0, Lm/u1;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lm/x1;

    .line 20
    .line 21
    iget-object v1, v0, Lm/x1;->G:Lm/v;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1f

    .line 28
    .line 29
    invoke-virtual {v0}, Lm/x1;->c()V

    .line 30
    .line 31
    .line 32
    :cond_1f
    return-void

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

.method public final onInvalidated()V
    .registers 3

    .line 1
    iget v0, p0, Lm/u1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_18

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm/u1;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lm/u2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Ln0/a;->a:Z

    .line 12
    .line 13
    invoke-virtual {v0}, Lm/u2;->notifyDataSetInvalidated()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    iget-object v0, p0, Lm/u1;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lm/x1;

    .line 20
    .line 21
    invoke-virtual {v0}, Lm/x1;->dismiss()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method
