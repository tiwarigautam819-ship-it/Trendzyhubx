###### Class b.a0 (b.a0)
.class public final Lb/a0;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb/i0;


# direct methods
.method public synthetic constructor <init>(Lb/i0;I)V
    .registers 3

    .line 1
    iput p2, p0, Lb/a0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb/a0;->c:Lb/i0;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lb/a0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/a0;->c:Lb/i0;

    .line 7
    .line 8
    invoke-virtual {v0}, Lb/i0;->c()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lr6/j;->a:Lr6/j;

    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_d
    iget-object v0, p0, Lb/a0;->c:Lb/i0;

    .line 15
    .line 16
    invoke-virtual {v0}, Lb/i0;->b()V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lr6/j;->a:Lr6/j;

    .line 20
    .line 21
    return-object v0

    .line 22
    :pswitch_15
    iget-object v0, p0, Lb/a0;->c:Lb/i0;

    .line 23
    .line 24
    invoke-virtual {v0}, Lb/i0;->c()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lr6/j;->a:Lr6/j;

    .line 28
    .line 29
    return-object v0

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
