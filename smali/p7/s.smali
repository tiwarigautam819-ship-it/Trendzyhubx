###### Class p7.s (p7.s)
.class public final Lp7/s;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/p;


# static fields
.field public static final c:Lp7/s;

.field public static final d:Lp7/s;

.field public static final e:Lp7/s;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lp7/s;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lp7/s;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lp7/s;->c:Lp7/s;

    .line 9
    .line 10
    new-instance v0, Lp7/s;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lp7/s;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lp7/s;->d:Lp7/s;

    .line 17
    .line 18
    new-instance v0, Lp7/s;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lp7/s;-><init>(II)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lp7/s;->e:Lp7/s;

    .line 25
    .line 26
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .registers 3

    .line 1
    iput p2, p0, Lp7/s;->b:I

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
    iget v0, p0, Lp7/s;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_14

    .line 4
    .line 5
    .line 6
    check-cast p1, Lp7/u;

    .line 7
    .line 8
    check-cast p2, Lu6/i;

    .line 9
    .line 10
    return-object p1

    .line 11
    :pswitch_a
    invoke-static {p1}, La1/a;->o(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    check-cast p2, Lu6/i;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return-object p1

    .line 18
    :pswitch_11
    check-cast p2, Lu6/i;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_a
    .end packed-switch
.end method
