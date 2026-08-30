###### Class q5.i (q5.i)
.class public final Lq5/i;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lq5/i;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 6

    .line 1
    iget v0, p0, Lq5/i;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_46

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/lang/Number;

    .line 7
    .line 8
    if-nez p2, :cond_d

    .line 9
    .line 10
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 11
    .line 12
    .line 13
    goto :goto_14

    .line 14
    :cond_d
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_14
    return-void

    .line 22
    :pswitch_15
    check-cast p2, Ljava/lang/Number;

    .line 23
    .line 24
    if-nez p2, :cond_1d

    .line 25
    .line 26
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 27
    .line 28
    .line 29
    goto :goto_31

    .line 30
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    float-to-double v1, v0

    .line 35
    invoke-static {v1, v2}, Lq5/l;->a(D)V

    .line 36
    .line 37
    .line 38
    instance-of v1, p2, Ljava/lang/Float;

    .line 39
    .line 40
    if-eqz v1, :cond_2a

    .line 41
    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    :goto_2e
    invoke-virtual {p1, p2}, Lx5/a;->B(Ljava/lang/Number;)V

    .line 48
    .line 49
    .line 50
    :goto_31
    return-void

    .line 51
    :pswitch_32
    check-cast p2, Ljava/lang/Number;

    .line 52
    .line 53
    if-nez p2, :cond_3a

    .line 54
    .line 55
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 56
    .line 57
    .line 58
    goto :goto_44

    .line 59
    :cond_3a
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    .line 60
    .line 61
    .line 62
    move-result-wide v0

    .line 63
    invoke-static {v0, v1}, Lq5/l;->a(D)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lx5/a;->z(D)V

    .line 67
    .line 68
    .line 69
    :goto_44
    return-void

    .line 70
    nop

    .line 71
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_32
        :pswitch_15
    .end packed-switch
.end method
