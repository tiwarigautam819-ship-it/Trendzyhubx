###### Class y7.m (y7.m)
.class public final Ly7/m;
.super Lu7/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ly7/o;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly7/o;ILjava/util/List;)V
    .registers 5

    const/4 p4, 0x1

    iput p4, p0, Ly7/m;->e:I

    iput-object p2, p0, Ly7/m;->f:Ly7/o;

    iput p3, p0, Ly7/m;->g:I

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ly7/o;ILjava/util/List;Z)V
    .registers 6

    const/4 p4, 0x0

    iput p4, p0, Ly7/m;->e:I

    iput-object p2, p0, Ly7/m;->f:Ly7/o;

    iput p3, p0, Ly7/m;->g:I

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private final b()J
    .registers 4

    .line 1
    iget-object v0, p0, Ly7/m;->f:Ly7/o;

    .line 2
    .line 3
    iget-object v0, v0, Ly7/o;->k:Ly7/z;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_7
    iget-object v0, p0, Ly7/m;->f:Ly7/o;

    .line 9
    .line 10
    iget-object v0, v0, Ly7/o;->E:Ly7/x;

    .line 11
    .line 12
    iget v1, p0, Ly7/m;->g:I

    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Ly7/x;->u(II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ly7/m;->f:Ly7/o;

    .line 20
    .line 21
    monitor-enter v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_27

    .line 22
    :try_start_15
    iget-object v1, p0, Ly7/m;->f:Ly7/o;

    .line 23
    .line 24
    iget-object v1, v1, Ly7/o;->G:Ljava/util/LinkedHashSet;

    .line 25
    .line 26
    iget v2, p0, Ly7/m;->g:I

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_24

    .line 33
    .line 34
    .line 35
    :try_start_22
    monitor-exit v0

    .line 36
    goto :goto_27

    .line 37
    :catchall_24
    move-exception v1

    .line 38
    monitor-exit v0

    .line 39
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_27

    .line 40
    :catch_27
    :goto_27
    const-wide/16 v0, -0x1

    .line 41
    .line 42
    return-wide v0
.end method


# virtual methods
.method public final a()J
    .registers 4

    .line 1
    iget v0, p0, Ly7/m;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_34

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly7/m;->f:Ly7/o;

    .line 7
    .line 8
    iget-object v0, v0, Ly7/o;->k:Ly7/z;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_c
    iget-object v0, p0, Ly7/m;->f:Ly7/o;

    .line 14
    .line 15
    iget-object v0, v0, Ly7/o;->E:Ly7/x;

    .line 16
    .line 17
    iget v1, p0, Ly7/m;->g:I

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ly7/x;->u(II)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ly7/m;->f:Ly7/o;

    .line 25
    .line 26
    monitor-enter v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_2c

    .line 27
    :try_start_1a
    iget-object v1, p0, Ly7/m;->f:Ly7/o;

    .line 28
    .line 29
    iget-object v1, v1, Ly7/o;->G:Ljava/util/LinkedHashSet;

    .line 30
    .line 31
    iget v2, p0, Ly7/m;->g:I

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_29

    .line 38
    .line 39
    .line 40
    :try_start_27
    monitor-exit v0

    .line 41
    goto :goto_2c

    .line 42
    :catchall_29
    move-exception v1

    .line 43
    monitor-exit v0

    .line 44
    throw v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    :goto_2c
    const-wide/16 v0, -0x1

    .line 46
    .line 47
    return-wide v0

    .line 48
    :pswitch_2f
    invoke-direct {p0}, Ly7/m;->b()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    return-wide v0

    .line 53
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2f
    .end packed-switch
.end method
