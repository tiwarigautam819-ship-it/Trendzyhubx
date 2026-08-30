###### Class j7.d (j7.d)
.class public final Lj7/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lj7/e;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lj7/d;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lj7/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    iget v0, p0, Lj7/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj7/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_e
    iget-object v0, p0, Lj7/d;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/Iterator;

    .line 18
    .line 19
    return-object v0

    .line 20
    :pswitch_13
    new-instance v0, Lj7/c;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, p0, v1}, Lj7/c;-><init>(Lj7/d;B)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :pswitch_1a
    new-instance v0, Lj7/c;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lj7/c;-><init>(Lj7/d;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method
