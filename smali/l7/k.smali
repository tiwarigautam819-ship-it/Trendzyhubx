###### Class l7.k (l7.k)
.class public final Ll7/k;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/p;


# static fields
.field public static final c:Ll7/k;

.field public static final d:Ll7/k;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ll7/k;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Ll7/k;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ll7/k;->c:Ll7/k;

    .line 9
    .line 10
    new-instance v0, Ll7/k;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Ll7/k;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Ll7/k;->d:Ll7/k;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .registers 3

    .line 1
    iput p2, p0, Ll7/k;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Ll7/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_20

    .line 4
    .line 5
    .line 6
    check-cast p1, Lu6/k;

    .line 7
    .line 8
    check-cast p2, Lu6/i;

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lu6/k;->s(Lu6/k;)Lu6/k;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_e
    check-cast p1, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p2, Lu6/i;

    .line 21
    .line 22
    return-object p1

    .line 23
    :pswitch_16
    check-cast p1, Lu6/k;

    .line 24
    .line 25
    check-cast p2, Lu6/i;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lu6/k;->s(Lu6/k;)Lu6/k;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    nop

    .line 33
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method
