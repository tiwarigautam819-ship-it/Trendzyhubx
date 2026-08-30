###### Class androidx.fragment.app.d0 (androidx.fragment.app.d0)
.class public final synthetic Landroidx/fragment/app/d0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Le1/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/fragment/app/d0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .registers 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/d0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/y0;->V()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Landroidx/fragment/app/d0;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/fragment/app/h0;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/h0;->markFragmentsCreated()V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Landroidx/fragment/app/h0;->mFragmentLifecycleRegistry:Landroidx/lifecycle/v;

    .line 23
    .line 24
    sget-object v1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v;->e(Landroidx/lifecycle/m;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
