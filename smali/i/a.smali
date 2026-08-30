###### Class i.a (i.a)
.class public final Li/a;
.super Landroid/support/v4/media/session/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/graphics/drawable/Animatable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Animatable;I)V
    .registers 3

    .line 1
    iput p2, p0, Li/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Li/a;->b:Landroid/graphics/drawable/Animatable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final l()V
    .registers 2

    .line 1
    iget v0, p0, Li/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li/a;->b:Landroid/graphics/drawable/Animatable;

    .line 7
    .line 8
    check-cast v0, Lh1/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Lh1/e;->start()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Li/a;->b:Landroid/graphics/drawable/Animatable;

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final m()V
    .registers 2

    .line 1
    iget v0, p0, Li/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li/a;->b:Landroid/graphics/drawable/Animatable;

    .line 7
    .line 8
    check-cast v0, Lh1/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Lh1/e;->stop()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_d
    iget-object v0, p0, Li/a;->b:Landroid/graphics/drawable/Animatable;

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
