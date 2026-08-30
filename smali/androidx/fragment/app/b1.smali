###### Class androidx.fragment.app.b1 (androidx.fragment.app.b1)
.class public Landroidx/fragment/app/b1;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroidx/lifecycle/r0;


# static fields
.field public static b:Landroidx/fragment/app/b1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Landroidx/fragment/app/b1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/p0;
    .registers 6

    .line 1
    iget v0, p0, Landroidx/fragment/app/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_6a

    .line 4
    .line 5
    .line 6
    new-instance p1, Lx0/b;

    .line 7
    .line 8
    invoke-direct {p1}, Lx0/b;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_b
    const-string v0, "Cannot create an instance of "

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_e
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "{\n            modelClass\u2026).newInstance()\n        }"

    .line 24
    .line 25
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    check-cast v1, Landroidx/lifecycle/p0;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_1d} :catch_22
    .catch Ljava/lang/InstantiationException; {:try_start_e .. :try_end_1d} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 29
    .line 30
    return-object v1

    .line 31
    :catch_1e
    move-exception v1

    .line 32
    goto :goto_24

    .line 33
    :catch_20
    move-exception v1

    .line 34
    goto :goto_36

    .line 35
    :catch_22
    move-exception v1

    .line 36
    goto :goto_48

    .line 37
    :goto_24
    new-instance v2, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v2

    .line 55
    :goto_36
    new-instance v2, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v2

    .line 73
    :goto_48
    new-instance v2, Ljava/lang/RuntimeException;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v2

    .line 91
    :pswitch_5a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 92
    .line 93
    const-string v0, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    .line 94
    .line 95
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :pswitch_62
    new-instance p1, Landroidx/fragment/app/c1;

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    invoke-direct {p1, v0}, Landroidx/fragment/app/c1;-><init>(Z)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    nop

    .line 107
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_62
        :pswitch_5a
        :pswitch_b
    .end packed-switch
.end method

.method public b(Ljava/lang/Class;Lv0/c;)Landroidx/lifecycle/p0;
    .registers 3

    .line 1
    iget p2, p0, Landroidx/fragment/app/b1;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/fragment/app/b1;->a(Ljava/lang/Class;)Landroidx/lifecycle/p0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_a
    invoke-virtual {p0, p1}, Landroidx/fragment/app/b1;->a(Ljava/lang/Class;)Landroidx/lifecycle/p0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :pswitch_f
    new-instance p1, Landroidx/lifecycle/m0;

    .line 17
    .line 18
    invoke-direct {p1}, Landroidx/lifecycle/m0;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_15
    invoke-virtual {p0, p1}, Landroidx/fragment/app/b1;->a(Ljava/lang/Class;)Landroidx/lifecycle/p0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public final c(Ld7/d;Lv0/c;)Landroidx/lifecycle/p0;
    .registers 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/b1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_1e

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, La1/a;->a(Landroidx/lifecycle/r0;Ld7/d;Lv0/c;)Landroidx/lifecycle/p0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_a
    invoke-static {p1}, Lm1/j;->i(Ld7/d;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/b1;->b(Ljava/lang/Class;Lv0/c;)Landroidx/lifecycle/p0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_13
    invoke-static {p0, p1, p2}, La1/a;->a(Landroidx/lifecycle/r0;Ld7/d;Lv0/c;)Landroidx/lifecycle/p0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :pswitch_18
    invoke-static {p0, p1, p2}, La1/a;->a(Landroidx/lifecycle/r0;Ld7/d;Lv0/c;)Landroidx/lifecycle/p0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    nop

    .line 31
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method
