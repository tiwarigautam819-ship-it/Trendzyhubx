###### Class b.z (b.z)
.class public final Lb/z;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb/i0;


# direct methods
.method public synthetic constructor <init>(Lb/i0;I)V
    .registers 3

    .line 1
    iput p2, p0, Lb/z;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lb/z;->c:Lb/i0;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    iget v0, p0, Lb/z;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_74

    .line 4
    .line 5
    .line 6
    check-cast p1, Lb/b;

    .line 7
    .line 8
    const-string v0, "backEvent"

    .line 9
    .line 10
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lb/z;->c:Lb/i0;

    .line 14
    .line 15
    iget-object v1, v0, Lb/i0;->c:Lb/y;

    .line 16
    .line 17
    if-nez v1, :cond_32

    .line 18
    .line 19
    iget-object v0, v0, Lb/i0;->b:Ls6/e;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget v1, v0, Ls6/e;->c:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2f

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v2, v1

    .line 41
    check-cast v2, Lb/y;

    .line 42
    .line 43
    iget-boolean v2, v2, Lb/y;->a:Z

    .line 44
    .line 45
    if-eqz v2, :cond_1d

    .line 46
    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    const/4 v1, 0x0

    .line 49
    :goto_30
    check-cast v1, Lb/y;

    .line 50
    .line 51
    :cond_32
    if-eqz v1, :cond_37

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lb/y;->c(Lb/b;)V

    .line 54
    .line 55
    .line 56
    :cond_37
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 57
    .line 58
    return-object p1

    .line 59
    :pswitch_3a
    check-cast p1, Lb/b;

    .line 60
    .line 61
    const-string v0, "backEvent"

    .line 62
    .line 63
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lb/z;->c:Lb/i0;

    .line 67
    .line 68
    iget-object v1, v0, Lb/i0;->b:Ls6/e;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget v2, v1, Ls6/e;->c:I

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_4e
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_60

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    move-object v3, v2

    .line 90
    check-cast v3, Lb/y;

    .line 91
    .line 92
    iget-boolean v3, v3, Lb/y;->a:Z

    .line 93
    .line 94
    if-eqz v3, :cond_4e

    .line 95
    .line 96
    goto :goto_61

    .line 97
    :cond_60
    const/4 v2, 0x0

    .line 98
    :goto_61
    check-cast v2, Lb/y;

    .line 99
    .line 100
    iget-object v1, v0, Lb/i0;->c:Lb/y;

    .line 101
    .line 102
    if-eqz v1, :cond_6a

    .line 103
    .line 104
    invoke-virtual {v0}, Lb/i0;->b()V

    .line 105
    .line 106
    .line 107
    :cond_6a
    iput-object v2, v0, Lb/i0;->c:Lb/y;

    .line 108
    .line 109
    if-eqz v2, :cond_71

    .line 110
    .line 111
    invoke-virtual {v2, p1}, Lb/y;->d(Lb/b;)V

    .line 112
    .line 113
    .line 114
    :cond_71
    sget-object p1, Lr6/j;->a:Lr6/j;

    .line 115
    .line 116
    return-object p1

    .line 117
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3a
    .end packed-switch
.end method
