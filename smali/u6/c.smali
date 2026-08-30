###### Class u6.c (u6.c)
.class public final Lu6/c;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/p;


# static fields
.field public static final c:Lu6/c;

.field public static final d:Lu6/c;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lu6/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Lu6/c;-><init>(II)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lu6/c;->c:Lu6/c;

    .line 9
    .line 10
    new-instance v0, Lu6/c;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lu6/c;-><init>(II)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lu6/c;->d:Lu6/c;

    .line 17
    .line 18
    return-void
.end method

.method public synthetic constructor <init>(II)V
    .registers 3

    .line 1
    iput p2, p0, Lu6/c;->b:I

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
    .registers 6

    .line 1
    iget v0, p0, Lu6/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_6e

    .line 4
    .line 5
    .line 6
    check-cast p1, Lu6/k;

    .line 7
    .line 8
    check-cast p2, Lu6/i;

    .line 9
    .line 10
    const-string v0, "acc"

    .line 11
    .line 12
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Lu6/i;->getKey()Lu6/j;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {p1, v0}, Lu6/k;->o(Lu6/j;)Lu6/k;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lu6/l;->a:Lu6/l;

    .line 24
    .line 25
    if-ne p1, v0, :cond_1b

    .line 26
    .line 27
    goto :goto_44

    .line 28
    :cond_1b
    sget-object v1, Lu6/g;->a:Lu6/g;

    .line 29
    .line 30
    invoke-interface {p1, v1}, Lu6/k;->g(Lu6/j;)Lu6/i;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lu6/h;

    .line 35
    .line 36
    if-nez v2, :cond_2c

    .line 37
    .line 38
    new-instance v0, Lu6/e;

    .line 39
    .line 40
    invoke-direct {v0, p2, p1}, Lu6/e;-><init>(Lu6/i;Lu6/k;)V

    .line 41
    .line 42
    .line 43
    :goto_2a
    move-object p2, v0

    .line 44
    goto :goto_44

    .line 45
    :cond_2c
    invoke-interface {p1, v1}, Lu6/k;->o(Lu6/j;)Lu6/k;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_39

    .line 50
    .line 51
    new-instance p1, Lu6/e;

    .line 52
    .line 53
    invoke-direct {p1, v2, p2}, Lu6/e;-><init>(Lu6/i;Lu6/k;)V

    .line 54
    .line 55
    .line 56
    move-object p2, p1

    .line 57
    goto :goto_44

    .line 58
    :cond_39
    new-instance v0, Lu6/e;

    .line 59
    .line 60
    new-instance v1, Lu6/e;

    .line 61
    .line 62
    invoke-direct {v1, p2, p1}, Lu6/e;-><init>(Lu6/i;Lu6/k;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v2, v1}, Lu6/e;-><init>(Lu6/i;Lu6/k;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2a

    .line 69
    :goto_44
    return-object p2

    .line 70
    :pswitch_45
    check-cast p1, Ljava/lang/String;

    .line 71
    .line 72
    check-cast p2, Lu6/i;

    .line 73
    .line 74
    const-string v0, "acc"

    .line 75
    .line 76
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_59

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_6d

    .line 90
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, ", "

    .line 99
    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    :goto_6d
    return-object p1

    .line 111
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_45
    .end packed-switch
.end method
