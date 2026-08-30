###### Class androidx.fragment.app.d (androidx.fragment.app.d)
.class public final synthetic Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/o;

.field public final synthetic c:Landroidx/fragment/app/l1;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/o;Landroidx/fragment/app/l1;I)V
    .registers 4

    .line 1
    iput p3, p0, Landroidx/fragment/app/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/o;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/l1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_44

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/o;

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/l1;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_14
    iget-object v0, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/o;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/l1;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_30

    .line 32
    .line 33
    iget v1, v2, Landroidx/fragment/app/l1;->a:I

    .line 34
    .line 35
    iget-object v2, v2, Landroidx/fragment/app/l1;->c:Landroidx/fragment/app/c0;

    .line 36
    .line 37
    iget-object v2, v2, Landroidx/fragment/app/c0;->P:Landroid/view/View;

    .line 38
    .line 39
    const-string v3, "operation.fragment.mView"

    .line 40
    .line 41
    invoke-static {v3, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Landroidx/fragment/app/m1;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 47
    .line 48
    .line 49
    :cond_30
    return-void

    .line 50
    :pswitch_31
    const-string v0, "this$0"

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/fragment/app/d;->b:Landroidx/fragment/app/o;

    .line 53
    .line 54
    invoke-static {v0, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string v0, "$operation"

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/fragment/app/d;->c:Landroidx/fragment/app/l1;

    .line 60
    .line 61
    invoke-static {v0, v2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/l1;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_31
        :pswitch_14
    .end packed-switch
.end method
