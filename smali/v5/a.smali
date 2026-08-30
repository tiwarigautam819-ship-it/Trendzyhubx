###### Class v5.a (v5.a)
.class public final Lv5/a;
.super Lq5/x;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final c:Lt5/a;

.field public static final d:Lt5/a;

.field public static final e:Lt5/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lt5/a;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lt5/a;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lv5/a;->c:Lt5/a;

    .line 8
    .line 9
    new-instance v0, Lt5/a;

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    invoke-direct {v0, v1}, Lt5/a;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lv5/a;->d:Lt5/a;

    .line 16
    .line 17
    new-instance v0, Lt5/a;

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-direct {v0, v1}, Lt5/a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lv5/a;->e:Lt5/a;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    iput p1, p0, Lv5/a;->a:I

    packed-switch p1, :pswitch_data_20

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MMM d, yyyy"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv5/a;->b:Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm:ss a"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv5/a;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public constructor <init>(Lq5/x;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lv5/a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lv5/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private final b(Lx5/a;Ljava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p2, Ljava/sql/Time;

    .line 2
    .line 3
    if-nez p2, :cond_8

    .line 4
    .line 5
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_8
    monitor-enter p0

    .line 10
    :try_start_9
    iget-object v0, p0, Lv5/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 19
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .line 25
    throw p1
.end method


# virtual methods
.method public final a(Lx5/a;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget v0, p0, Lv5/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2c

    .line 4
    .line 5
    .line 6
    check-cast p2, Ljava/sql/Timestamp;

    .line 7
    .line 8
    iget-object v0, p0, Lv5/a;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lq5/x;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lq5/x;->a(Lx5/a;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    invoke-direct {p0, p1, p2}, Lv5/a;->b(Lx5/a;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    check-cast p2, Ljava/sql/Date;

    .line 21
    .line 22
    if-nez p2, :cond_1b

    .line 23
    .line 24
    invoke-virtual {p1}, Lx5/a;->w()Lx5/a;

    .line 25
    .line 26
    .line 27
    goto :goto_28

    .line 28
    :cond_1b
    monitor-enter p0

    .line 29
    :try_start_1c
    iget-object v0, p0, Lv5/a;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_29

    .line 38
    invoke-virtual {p1, p2}, Lx5/a;->C(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_28
    return-void

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    .line 44
    throw p1

    .line 45
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method
