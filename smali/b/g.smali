###### Class b.g (b.g)
.class public final synthetic Lb/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, Lb/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb/g;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lb/g;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .registers 5

    .line 1
    iget p1, p0, Lb/g;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lb/g;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lj0/l;

    .line 9
    .line 10
    iget-object v0, p0, Lb/g;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lj0/m;

    .line 13
    .line 14
    sget-object v1, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    .line 15
    .line 16
    if-ne p2, v1, :cond_15

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lj0/l;->b(Lj0/m;)V

    .line 19
    .line 20
    .line 21
    goto :goto_18

    .line 22
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :goto_18
    return-void

    .line 26
    :pswitch_19
    iget-object p1, p0, Lb/g;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lb/i0;

    .line 29
    .line 30
    iget-object v0, p0, Lb/g;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lb/p;

    .line 33
    .line 34
    const-string v1, "$dispatcher"

    .line 35
    .line 36
    invoke-static {v1, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Landroidx/lifecycle/m;->ON_CREATE:Landroidx/lifecycle/m;

    .line 40
    .line 41
    if-ne p2, v1, :cond_3c

    .line 42
    .line 43
    sget-object p2, Lb/h;->a:Lb/h;

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lb/h;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    const-string v0, "invoker"

    .line 50
    .line 51
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object p2, p1, Lb/i0;->e:Landroid/window/OnBackInvokedDispatcher;

    .line 55
    .line 56
    iget-boolean p2, p1, Lb/i0;->g:Z

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lb/i0;->d(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3c
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_19
    .end packed-switch
.end method
