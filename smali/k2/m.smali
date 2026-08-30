###### Class k2.m (k2.m)
.class public final Lk2/m;
.super Landroid/os/AsyncTask;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/io/File;

.field public final c:Lk2/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lk2/l;)V
    .registers 5

    .line 1
    const-string v0, "uriStr"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lk2/m;->a:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p2, p0, Lk2/m;->b:Ljava/io/File;

    .line 12
    .line 13
    iput-object p3, p0, Lk2/m;->c:Lk2/l;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    const-string v0, "args"

    .line 10
    .line 11
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_45

    .line 12
    .line 13
    .line 14
    :try_start_d
    new-instance p1, Ljava/net/URL;

    .line 15
    .line 16
    iget-object v0, p0, Lk2/m;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-instance v2, Ljava/io/DataInputStream;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .line 37
    .line 38
    new-array p1, v0, [B

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/io/DataOutputStream;

    .line 47
    .line 48
    new-instance v2, Ljava/io/FileOutputStream;

    .line 49
    .line 50
    iget-object v3, p0, Lk2/m;->b:Ljava/io/File;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 65
    .line 66
    .line 67
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_44} :catch_47
    .catchall {:try_start_d .. :try_end_44} :catchall_45

    .line 68
    .line 69
    return-object p1

    .line 70
    :catchall_45
    move-exception p1

    .line 71
    goto :goto_4a

    .line 72
    :catch_47
    :try_start_47
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_49
    .catchall {:try_start_47 .. :try_end_49} :catchall_45

    .line 73
    .line 74
    return-object p1

    .line 75
    :goto_4a
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object v1
.end method

.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_8
    :try_start_8
    check-cast p1, [Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lk2/m;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_f

    .line 15
    return-object p1

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .registers 3

    .line 1
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    goto :goto_22

    .line 8
    :cond_7
    :try_start_7
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_23

    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    goto :goto_22

    .line 21
    :cond_14
    if-eqz p1, :cond_22

    .line 22
    .line 23
    :try_start_16
    iget-object p1, p0, Lk2/m;->c:Lk2/l;

    .line 24
    .line 25
    iget-object v0, p0, Lk2/m;->b:Ljava/io/File;

    .line 26
    .line 27
    invoke-interface {p1, v0}, Lk2/l;->c(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    .line 28
    .line 29
    .line 30
    goto :goto_22

    .line 31
    :catchall_1e
    move-exception p1

    .line 32
    :try_start_1f
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    .line 33
    .line 34
    .line 35
    :cond_22
    :goto_22
    return-void

    .line 36
    :catchall_23
    move-exception p1

    .line 37
    invoke-static {p1, p0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
