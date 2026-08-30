###### Class y7.n (y7.n)
.class public final Ly7/n;
.super Lu7/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final synthetic e:Ly7/o;

.field public final synthetic f:I

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ly7/o;IJ)V
    .registers 6

    .line 1
    iput-object p2, p0, Ly7/n;->e:Ly7/o;

    .line 2
    .line 3
    iput p3, p0, Ly7/n;->f:I

    .line 4
    .line 5
    iput-wide p4, p0, Ly7/n;->g:J

    .line 6
    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-direct {p0, p1, p2}, Lu7/a;-><init>(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()J
    .registers 6

    .line 1
    iget-object v0, p0, Ly7/n;->e:Ly7/o;

    .line 2
    .line 3
    :try_start_2
    iget-object v1, v0, Ly7/o;->E:Ly7/x;

    .line 4
    .line 5
    iget v2, p0, Ly7/n;->f:I

    .line 6
    .line 7
    iget-wide v3, p0, Ly7/n;->g:J

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3, v4}, Ly7/x;->w(IJ)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_c

    .line 10
    .line 11
    .line 12
    goto :goto_11

    .line 13
    :catch_c
    move-exception v1

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2, v2, v1}, Ly7/o;->a(IILjava/io/IOException;)V

    .line 16
    .line 17
    .line 18
    :goto_11
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    return-wide v0
.end method
