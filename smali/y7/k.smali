###### Class y7.k (y7.k)
.class public final Ly7/k;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/a;


# instance fields
.field public final a:Ly7/s;

.field public final synthetic b:Ly7/o;


# direct methods
.method public constructor <init>(Ly7/o;Ly7/s;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly7/k;->b:Ly7/o;

    .line 5
    .line 6
    iput-object p2, p0, Ly7/k;->a:Ly7/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Ly7/k;->b:Ly7/o;

    .line 2
    .line 3
    iget-object v1, p0, Ly7/k;->a:Ly7/s;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_6
    invoke-virtual {v1, v2, p0}, Ly7/s;->a(ZLy7/k;)Z

    .line 8
    .line 9
    .line 10
    move-result v4

    .line 11
    if-eqz v4, :cond_20

    .line 12
    .line 13
    :cond_c
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v4, p0}, Ly7/s;->a(ZLy7/k;)Z

    .line 15
    .line 16
    .line 17
    move-result v4
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_1e
    .catchall {:try_start_6 .. :try_end_11} :catchall_1c

    .line 18
    if-nez v4, :cond_c

    .line 19
    .line 20
    const/16 v4, 0x9

    .line 21
    .line 22
    invoke-virtual {v0, v2, v4, v3}, Ly7/o;->a(IILjava/io/IOException;)V

    .line 23
    .line 24
    .line 25
    :goto_18
    invoke-static {v1}, Ls7/b;->d(Ljava/io/Closeable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_35

    .line 29
    :catchall_1c
    move-exception v2

    .line 30
    goto :goto_28

    .line 31
    :catch_1e
    move-exception v2

    .line 32
    goto :goto_30

    .line 33
    :cond_20
    :try_start_20
    new-instance v2, Ljava/io/IOException;

    .line 34
    .line 35
    const-string v4, "Required SETTINGS preface not received"

    .line 36
    .line 37
    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v2
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_1e
    .catchall {:try_start_20 .. :try_end_28} :catchall_1c

    .line 41
    :goto_28
    const/4 v4, 0x3

    .line 42
    invoke-virtual {v0, v4, v4, v3}, Ly7/o;->a(IILjava/io/IOException;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Ls7/b;->d(Ljava/io/Closeable;)V

    .line 46
    .line 47
    .line 48
    throw v2

    .line 49
    :goto_30
    const/4 v3, 0x2

    .line 50
    invoke-virtual {v0, v3, v3, v2}, Ly7/o;->a(IILjava/io/IOException;)V

    .line 51
    .line 52
    .line 53
    goto :goto_18

    .line 54
    :goto_35
    sget-object v0, Lr6/j;->a:Lr6/j;

    .line 55
    .line 56
    return-object v0
.end method
