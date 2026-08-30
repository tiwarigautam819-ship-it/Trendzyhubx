###### Class u3.d (u3.d)
.class public final synthetic Lu3/d;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/a;
.implements Lp4/h;


# static fields
.field public static final synthetic b:Lu3/d;

.field public static final synthetic c:Lu3/d;

.field public static final synthetic d:Lu3/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lu3/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lu3/d;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lu3/d;->b:Lu3/d;

    .line 8
    .line 9
    new-instance v0, Lu3/d;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lu3/d;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lu3/d;->c:Lu3/d;

    .line 16
    .line 17
    new-instance v0, Lu3/d;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lu3/d;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lu3/d;->d:Lu3/d;

    .line 24
    .line 25
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lu3/d;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Lp4/i;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lu3/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_52

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lp4/i;->e()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/Bundle;

    .line 11
    .line 12
    const-string v0, "notification_data"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/content/Intent;

    .line 19
    .line 20
    if-eqz p1, :cond_1b

    .line 21
    .line 22
    new-instance v0, Lu3/a;

    .line 23
    .line 24
    invoke-direct {v0, p1}, Lu3/a;-><init>(Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    return-object v0

    .line 30
    :pswitch_1d
    invoke-virtual {p1}, Lp4/i;->g()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2a

    .line 35
    .line 36
    invoke-virtual {p1}, Lp4/i;->e()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/os/Bundle;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2a
    const/4 v0, 0x3

    .line 44
    const-string v1, "Rpc"

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_34

    .line 51
    .line 52
    goto :goto_45

    .line 53
    :cond_34
    invoke-virtual {p1}, Lp4/i;->d()Ljava/lang/Exception;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v2, "Error making request: "

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_45
    new-instance v0, Ljava/io/IOException;

    .line 71
    .line 72
    invoke-virtual {p1}, Lp4/i;->d()Ljava/lang/Exception;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v1, "SERVICE_NOT_AVAILABLE"

    .line 77
    .line 78
    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    nop

    .line 83
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)Lp4/q;
    .registers 3

    .line 1
    check-cast p1, Landroid/os/Bundle;

    .line 2
    .line 3
    sget v0, Lu3/b;->h:I

    .line 4
    .line 5
    if-eqz p1, :cond_14

    .line 6
    .line 7
    const-string v0, "google.messenger"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_14

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_14
    invoke-static {p1}, Lj7/g;->l(Ljava/lang/Object;)Lp4/q;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method
