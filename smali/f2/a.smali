###### Class f2.a (f2.a)
.class public final synthetic Lf2/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ly1/e;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ly1/e;I)V
    .registers 4

    .line 1
    iput p3, p0, Lf2/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lf2/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lf2/a;->c:Ly1/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    sget-object v0, Lm2/e;->a:Lm2/e;

    .line 2
    .line 3
    iget v1, p0, Lf2/a;->a:I

    .line 4
    .line 5
    iget-object v2, p0, Lf2/a;->c:Ly1/e;

    .line 6
    .line 7
    iget-object v3, p0, Lf2/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_44

    .line 10
    .line 11
    .line 12
    const-class v1, Lm2/b;

    .line 13
    .line 14
    invoke-static {v1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_14

    .line 19
    .line 20
    goto :goto_2f

    .line 21
    :cond_14
    :try_start_14
    invoke-static {v2}, Lf4/f;->b(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-class v4, Lm2/e;

    .line 26
    .line 27
    invoke-static {v4}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2b

    .line 31
    if-eqz v5, :cond_21

    .line 32
    .line 33
    goto :goto_2f

    .line 34
    :cond_21
    const/4 v5, 0x2

    .line 35
    :try_start_22
    invoke-virtual {v0, v5, v3, v2}, Lm2/e;->b(ILjava/lang/String;Ljava/util/List;)I
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    .line 36
    .line 37
    .line 38
    goto :goto_2f

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    :try_start_27
    invoke-static {v0, v4}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    .line 41
    .line 42
    .line 43
    goto :goto_2f

    .line 44
    :catchall_2b
    move-exception v0

    .line 45
    invoke-static {v0, v1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_2f
    return-void

    .line 49
    :pswitch_30
    const-class v0, Lf2/d;

    .line 50
    .line 51
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_39

    .line 56
    .line 57
    goto :goto_43

    .line 58
    :cond_39
    :try_start_39
    sget-object v1, Lf2/d;->a:Lf2/d;

    .line 59
    .line 60
    invoke-virtual {v1, v3, v2}, Lf2/d;->c(Ljava/lang/String;Ly1/e;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    .line 61
    .line 62
    .line 63
    goto :goto_43

    .line 64
    :catchall_3f
    move-exception v1

    .line 65
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :goto_43
    return-void

    .line 69
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method
