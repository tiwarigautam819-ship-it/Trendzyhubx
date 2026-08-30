###### Class androidx.lifecycle.k0 (androidx.lifecycle.k0)
.class public final Landroidx/lifecycle/k0;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/lifecycle/k0;->b:I

    iput-object p2, p0, Landroidx/lifecycle/k0;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lc7/a;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Landroidx/lifecycle/k0;->b:I

    .line 2
    check-cast p1, Ld7/h;

    iput-object p1, p0, Landroidx/lifecycle/k0;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/k0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_22

    .line 4
    .line 5
    .line 6
    :try_start_5
    iget-object v0, p0, Landroidx/lifecycle/k0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ld7/h;

    .line 9
    .line 10
    invoke-interface {v0}, Lc7/a;->b()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/List;
    :try_end_f
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_5 .. :try_end_f} :catch_10

    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catch_10
    sget-object v0, Ls6/o;->a:Ls6/o;

    .line 18
    .line 19
    :goto_12
    return-object v0

    .line 20
    :pswitch_13
    iget-object v0, p0, Landroidx/lifecycle/k0;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    return-object v0

    .line 25
    :pswitch_18
    iget-object v0, p0, Landroidx/lifecycle/k0;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Landroidx/lifecycle/t0;

    .line 28
    .line 29
    invoke-static {v0}, Landroidx/lifecycle/j0;->e(Landroidx/lifecycle/t0;)Landroidx/lifecycle/m0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method
