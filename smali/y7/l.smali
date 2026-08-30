###### Class y7.l (y7.l)
.class public final Ly7/l;
.super Lu7/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:Ly7/o;

.field public final synthetic f:I

.field public final synthetic g:Le8/g;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly7/o;ILe8/g;IZ)V
    .registers 7

    .line 1
    iput-object p2, p0, Ly7/l;->e:Ly7/o;

    .line 2
    .line 3
    iput p3, p0, Ly7/l;->f:I

    .line 4
    .line 5
    iput-object p4, p0, Ly7/l;->g:Le8/g;

    .line 6
    .line 7
    iput p5, p0, Ly7/l;->h:I

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ly7/l;->e:Ly7/o;

    .line 2
    .line 3
    iget-object v0, v0, Ly7/o;->k:Ly7/z;

    .line 4
    .line 5
    iget-object v1, p0, Ly7/l;->g:Le8/g;

    .line 6
    .line 7
    iget v2, p0, Ly7/l;->h:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    invoke-virtual {v1, v2, v3}, Le8/g;->skip(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Ly7/l;->e:Ly7/o;

    .line 17
    .line 18
    iget-object v0, v0, Ly7/o;->E:Ly7/x;

    .line 19
    .line 20
    iget v1, p0, Ly7/l;->f:I

    .line 21
    .line 22
    const/16 v2, 0x9

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Ly7/x;->u(II)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Ly7/l;->e:Ly7/o;

    .line 28
    .line 29
    monitor-enter v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_2f

    .line 30
    :try_start_1d
    iget-object v1, p0, Ly7/l;->e:Ly7/o;

    .line 31
    .line 32
    iget-object v1, v1, Ly7/o;->G:Ljava/util/LinkedHashSet;

    .line 33
    .line 34
    iget v2, p0, Ly7/l;->f:I

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2c

    .line 41
    .line 42
    .line 43
    :try_start_2a
    monitor-exit v0

    .line 44
    goto :goto_2f

    .line 45
    :catchall_2c
    move-exception v1

    .line 46
    monitor-exit v0

    .line 47
    throw v1
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_2f

    .line 48
    :catch_2f
    :goto_2f
    const-wide/16 v0, -0x1

    .line 49
    .line 50
    return-wide v0
.end method
