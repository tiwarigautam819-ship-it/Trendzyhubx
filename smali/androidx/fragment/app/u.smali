###### Class androidx.fragment.app.u (androidx.fragment.app.u)
.class public final synthetic Landroidx/fragment/app/u;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Landroidx/fragment/app/u;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/u;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_34

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/y0;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/fragment/app/y0;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_16

    .line 21
    .line 22
    return-void

    .line 23
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/ClassCastException;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :pswitch_23
    iget-object v0, p0, Landroidx/fragment/app/u;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroidx/fragment/app/c0;

    .line 39
    .line 40
    iget-object v1, v0, Landroidx/fragment/app/c0;->Y:Landroidx/fragment/app/i1;

    .line 41
    .line 42
    iget-object v2, v0, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 43
    .line 44
    iget-object v1, v1, Landroidx/fragment/app/i1;->e:Le1/f;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Le1/f;->b(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput-object v1, v0, Landroidx/fragment/app/c0;->d:Landroid/os/Bundle;

    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method
