###### Class d1.a (d1.a)
.class public final Ld1/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ld1/c;

.field public final c:[B

.field public final d:Ljava/io/File;

.field public final e:Ljava/lang/String;

.field public f:Z

.field public g:[Ld1/b;

.field public h:[B


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Ld1/c;Ljava/lang/String;Ljava/io/File;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Ld1/a;->f:Z

    .line 6
    .line 7
    iput-object p2, p0, Ld1/a;->a:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iput-object p3, p0, Ld1/a;->b:Ld1/c;

    .line 10
    .line 11
    iput-object p4, p0, Ld1/a;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p5, p0, Ld1/a;->d:Ljava/io/File;

    .line 14
    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 p2, 0x18

    .line 18
    .line 19
    const/4 p3, 0x0

    .line 20
    if-lt p1, p2, :cond_2c

    .line 21
    .line 22
    const/16 p2, 0x22

    .line 23
    .line 24
    if-le p1, p2, :cond_1a

    .line 25
    .line 26
    goto :goto_2c

    .line 27
    :cond_1a
    packed-switch p1, :pswitch_data_30

    .line 28
    .line 29
    .line 30
    goto :goto_2c

    .line 31
    :pswitch_1e
    sget-object p3, Ld1/d;->d:[B

    .line 32
    .line 33
    goto :goto_2c

    .line 34
    :pswitch_21
    sget-object p3, Ld1/d;->e:[B

    .line 35
    .line 36
    goto :goto_2c

    .line 37
    :pswitch_24
    sget-object p3, Ld1/d;->f:[B

    .line 38
    .line 39
    goto :goto_2c

    .line 40
    :pswitch_27
    sget-object p3, Ld1/d;->g:[B

    .line 41
    .line 42
    goto :goto_2c

    .line 43
    :pswitch_2a
    sget-object p3, Ld1/d;->h:[B

    .line 44
    .line 45
    :cond_2c
    :goto_2c
    iput-object p3, p0, Ld1/a;->c:[B

    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x18
        :pswitch_2a
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object p1

    .line 10
    :catch_9
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1d

    .line 16
    .line 17
    const-string p2, "compressed"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1d

    .line 24
    .line 25
    iget-object p1, p0, Ld1/a;->b:Ld1/c;

    .line 26
    .line 27
    invoke-interface {p1}, Ld1/c;->g()V

    .line 28
    .line 29
    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public final b(ILjava/io/Serializable;)V
    .registers 5

    .line 1
    new-instance v0, Lb/m;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, v1, p0, p2}, Lb/m;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Ld1/a;->a:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
