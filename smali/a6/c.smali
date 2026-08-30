###### Class a6.c (a6.c)
.class public final La6/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, La6/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget v0, p0, La6/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_34

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/view/View;

    .line 7
    .line 8
    check-cast p2, Landroid/view/View;

    .line 9
    .line 10
    sget-object v0, Lj0/k0;->a:Ljava/util/WeakHashMap;

    .line 11
    .line 12
    invoke-static {p1}, Lj0/d0;->e(Landroid/view/View;)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p2}, Lj0/d0;->e(Landroid/view/View;)F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    cmpl-float v0, p1, p2

    .line 21
    .line 22
    if-lez v0, :cond_19

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    goto :goto_20

    .line 26
    :cond_19
    cmpg-float p1, p1, p2

    .line 27
    .line 28
    if-gez p1, :cond_1f

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    :goto_20
    return p1

    .line 34
    :pswitch_21
    check-cast p1, Ljava/lang/Comparable;

    .line 35
    .line 36
    check-cast p2, Ljava/lang/Comparable;

    .line 37
    .line 38
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :pswitch_2a
    check-cast p1, La6/f;

    .line 44
    .line 45
    check-cast p2, La6/f;

    .line 46
    .line 47
    iget p1, p1, La6/f;->d:I

    .line 48
    .line 49
    iget p2, p2, La6/f;->d:I

    .line 50
    .line 51
    sub-int/2addr p1, p2

    .line 52
    return p1

    .line 53
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_21
    .end packed-switch
.end method
