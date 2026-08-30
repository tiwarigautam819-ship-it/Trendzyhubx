###### Class com.engagelab.privates.common.t0 (com.engagelab.privates.common.t0)
.class public Lcom/engagelab/privates/common/t0;
.super Lcom/engagelab/privates/common/o0;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile j:Lcom/engagelab/privates/common/t0;


# instance fields
.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcom/engagelab/privates/push/api/PlatformTokenMessage;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public final d:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Byte;",
            "Lcom/engagelab/privates/push/api/PlatformTokenMessage;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/os/Bundle;

.field public f:Z

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/engagelab/privates/common/o0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/engagelab/privates/common/t0;->c:Z

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/engagelab/privates/common/t0;->d:Ljava/util/concurrent/ConcurrentMap;

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/engagelab/privates/common/t0;->f:Z

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/engagelab/privates/common/t0;->h:Ljava/util/ArrayList;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/engagelab/privates/common/t0;->i:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "MTPlatformBusiness"

    const-string v1, "get "

    const/4 v2, 0x1

    .line 40
    :try_start_5
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string v4, "android.os.SystemProperties"

    .line 42
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    .line 43
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 44
    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version is:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    return-object v2

    :catchall_3a
    move-exception v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " get "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " wrong error:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static b()Lcom/engagelab/privates/common/t0;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/t0;->j:Lcom/engagelab/privates/common/t0;

    if-nez v0, :cond_13

    .line 2
    const-class v0, Lcom/engagelab/privates/common/t0;

    monitor-enter v0

    .line 3
    :try_start_7
    new-instance v1, Lcom/engagelab/privates/common/t0;

    invoke-direct {v1}, Lcom/engagelab/privates/common/t0;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/t0;->j:Lcom/engagelab/privates/common/t0;

    .line 4
    monitor-exit v0

    goto :goto_13

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    .line 5
    :cond_13
    :goto_13
    sget-object v0, Lcom/engagelab/privates/common/t0;->j:Lcom/engagelab/privates/common/t0;

    return-object v0
.end method

.method public static c()Z
    .registers 2

    const-string v0, "ro.build.version.emui"

    .line 1
    invoke-static {v0}, Lcom/engagelab/privates/common/t0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "magicui"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "magicos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_d0

    goto/16 :goto_72

    :sswitch_d
    const-string v0, "meizu"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto/16 :goto_72

    :cond_17
    const/16 v1, 0x8

    goto/16 :goto_72

    :sswitch_1b
    const-string v0, "honor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_24

    goto :goto_72

    :cond_24
    const/4 v1, 0x7

    goto :goto_72

    :sswitch_26
    const-string v0, "vivo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2f

    goto :goto_72

    :cond_2f
    const/4 v1, 0x6

    goto :goto_72

    :sswitch_31
    const-string v0, "oppo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    goto :goto_72

    :cond_3a
    const/4 v1, 0x5

    goto :goto_72

    :sswitch_3c
    const-string v0, "xiaomi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_45

    goto :goto_72

    :cond_45
    const/4 v1, 0x4

    goto :goto_72

    :sswitch_47
    const-string v0, "realme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_50

    goto :goto_72

    :cond_50
    const/4 v1, 0x3

    goto :goto_72

    :sswitch_52
    const-string v0, "huawei"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5b

    goto :goto_72

    :cond_5b
    const/4 v1, 0x2

    goto :goto_72

    :sswitch_5d
    const-string v0, "oneplus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_66

    goto :goto_72

    :cond_66
    const/4 v1, 0x1

    goto :goto_72

    :sswitch_68
    const-string v0, "blackshark"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    const-string p2, "ro.build.version.opporom"

    packed-switch v1, :pswitch_data_f6

    const-string p1, ""

    return-object p1

    :pswitch_7a
    const-string p2, "ro.flyme.version.id"

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_81
    const-string p2, "ro.build.version.magic"

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_88
    const-string p2, "ro.vivo.os.build.display.id"

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 112
    :pswitch_8f
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_94
    const-string p2, "ro.miui.ui.version.name"

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9b
    const-string p2, "ro.build.version.realmeui"

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a2
    const-string p2, "ro.build.version.emui"

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string p2, "hw_sc.build.platform.version"

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b5
    return-object p2

    :pswitch_b6
    const-string v0, "ro.rom.version"

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c7
    return-object v0

    :pswitch_c8
    const-string p2, "ro.joyui.ui.version.code"

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_d0
    .sparse-switch
        -0x608d18ba -> :sswitch_68
        -0x4eb36700 -> :sswitch_5d
        -0x47e95e19 -> :sswitch_52
        -0x37ba884a -> :sswitch_47
        -0x2d450b45 -> :sswitch_3c
        0x3427a0 -> :sswitch_31
        0x373cac -> :sswitch_26
        0x5edac6a -> :sswitch_1b
        0x62f84cc -> :sswitch_d
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_b6
        :pswitch_a2
        :pswitch_9b
        :pswitch_94
        :pswitch_8f
        :pswitch_88
        :pswitch_81
        :pswitch_7a
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 2
    iput-boolean v0, p0, Lcom/engagelab/privates/common/t0;->f:Z

    .line 3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearPlatformToken manufacturer is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MTPlatformBusiness"

    invoke-static {v4, v3}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 6
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/t0;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 7
    iget-object v3, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_36
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/t0;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 9
    iget-object v3, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_46
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/t0;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 11
    iget-object v3, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_51
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/t0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 13
    iget-object v3, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_5c
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/t0;->h(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 15
    iget-object v1, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_6c
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/t0;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 17
    iget-object v1, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_7c
    invoke-virtual {p0, p1, v2}, Lcom/engagelab/privates/common/t0;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 19
    iget-object v1, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_8c
    iget-object v1, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 21
    :goto_9a
    iget-object v5, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_e0

    .line 22
    iget-object v5, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    .line 23
    invoke-virtual {p0, p1, v5}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;Ljava/lang/Byte;)Z

    move-result v6

    if-nez v6, :cond_c2

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "clearPlatformToken hasSendToken platform: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    .line 25
    :cond_c2
    new-instance v3, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    invoke-direct {v3}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;-><init>()V

    .line 26
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v3, v5}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    move-result-object v3

    const-string v5, ""

    .line 27
    invoke-virtual {v3, v5}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setToken(Ljava/lang/String;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setIsUserSettings(Z)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    move-result-object v3

    .line 29
    invoke-virtual {p0, p1, v3, v1}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V

    move v3, v0

    :goto_dd
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    :cond_e0
    if-nez v3, :cond_e5

    .line 30
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/t0;->g(Landroid/content/Context;)V

    :cond_e5
    return-void
.end method

.method public final a(Landroid/content/Context;BIILjava/lang/String;)V
    .registers 14

    .line 79
    :try_start_0
    invoke-static {p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getPlatformState(Landroid/content/Context;)B

    move-result v0

    .line 80
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 82
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 83
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, p1, v3}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "platform"

    .line 86
    invoke-virtual {v6, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "code"

    .line 87
    invoke-virtual {v6, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "m_code"

    .line 88
    invoke-virtual {v6, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "m_flag"

    .line 89
    invoke-virtual {v6, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "m_token"

    .line 90
    invoke-virtual {v6, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "country_code"

    .line 91
    invoke-virtual {v6, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "product"

    .line 92
    invoke-virtual {v6, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "manufacturer"

    .line 93
    invoke-virtual {v6, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "system_version"

    .line 94
    invoke-virtual {v6, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "m_system_version"

    .line 95
    invoke-virtual {v6, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    new-instance p2, Lcom/engagelab/privates/core/api/MTReporter;

    invoke-direct {p2}, Lcom/engagelab/privates/core/api/MTReporter;-><init>()V

    const-string p3, "platform_node"

    .line 97
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setType(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 98
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTReporter;->setContent(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTReporter;

    move-result-object p2

    .line 99
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "protocol"

    .line 100
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8b9

    .line 101
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V
    :try_end_6f
    .catchall {:try_start_0 .. :try_end_6f} :catchall_70

    return-void

    :catchall_70
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "reportPlatformNode failed "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "MTPlatformBusiness"

    .line 103
    invoke-static {p1, p2, p3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V
    .registers 8

    .line 55
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/t0;->c(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/engagelab/privates/common/t0;->a(Lcom/engagelab/privates/push/api/PlatformTokenMessage;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 57
    :cond_a
    iget-boolean v0, p0, Lcom/engagelab/privates/common/t0;->c:Z

    const-string v1, "MTPlatformBusiness"

    if-nez v0, :cond_2a

    const/4 p3, 0x1

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "stop send platformToken Login first, platformToken:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_2a
    invoke-virtual {p0, p2, p3}, Lcom/engagelab/privates/common/t0;->a(Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)Z

    move-result p3

    if-eqz p3, :cond_46

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "stop send repetition platformToken, platformToken:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_46
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getRid()J

    move-result-wide v2

    .line 63
    iget-object p3, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "send platformToken, rid:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", platformToken:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result p3

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getRegion()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, v0, p2}, Lcom/engagelab/privates/common/c1;->a(BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    .line 66
    new-instance p3, Lcom/engagelab/privates/core/api/MTProtocol;

    invoke-direct {p3}, Lcom/engagelab/privates/core/api/MTProtocol;-><init>()V

    .line 67
    invoke-virtual {p3, v2, v3}, Lcom/engagelab/privates/core/api/MTProtocol;->setRid(J)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    const/16 v0, 0x1b

    .line 68
    invoke-virtual {p3, v0}, Lcom/engagelab/privates/core/api/MTProtocol;->setCommand(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    const/4 v0, 0x2

    .line 69
    invoke-virtual {p3, v0}, Lcom/engagelab/privates/core/api/MTProtocol;->setVersion(I)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p3

    .line 70
    invoke-virtual {p3, p2}, Lcom/engagelab/privates/core/api/MTProtocol;->setBody([B)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    sget-object p3, Lcom/engagelab/privates/push/MTPush;->a:Ljava/lang/String;

    .line 71
    invoke-virtual {p2, p3}, Lcom/engagelab/privates/core/api/MTProtocol;->setThreadName(Ljava/lang/String;)Lcom/engagelab/privates/core/api/MTProtocol;

    move-result-object p2

    .line 72
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "protocol"

    .line 73
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 p2, 0x8ae

    .line 74
    invoke-static {p1, p2, p3}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Byte;)Z
    .registers 9

    .line 31
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_18

    .line 32
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return v2

    .line 33
    :cond_18
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 36
    iget-object v4, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 37
    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-ne v4, v5, :cond_28

    invoke-virtual {v3}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    return v2

    .line 38
    :cond_51
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    invoke-static {p1, p2}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_60

    return v2

    :cond_60
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/engagelab/privates/push/api/PlatformTokenMessage;)Z
    .registers 7

    .line 47
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "MTPlatformBusiness"

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    .line 48
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getIsUserSettings()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v3

    .line 49
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "not user mt token : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 50
    :cond_2d
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getIsUserSettings()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 51
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_40
    iget-boolean v0, p0, Lcom/engagelab/privates/common/t0;->f:Z

    if-eqz v0, :cond_5d

    .line 53
    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getIsUserSettings()Z

    move-result v0

    if-eqz v0, :cond_4b

    return v3

    .line 54
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "isClearToken not user mt token : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5d
    return v3
.end method

.method public final a(Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)Z
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    if-eqz v0, :cond_38

    .line 76
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    return v1

    :cond_22
    if-eqz p2, :cond_38

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isRepetitionToken is_repetition_send:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTPlatformBusiness"

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 78
    :cond_38
    iget-object p2, p0, Lcom/engagelab/privates/common/t0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v0, "android.os.SystemProperties"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x1

    .line 73
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "get"

    .line 74
    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    .line 76
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-object p1

    :catchall_23
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getPropertiesStringValue failed "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MTPlatformBusiness"

    .line 78
    invoke-static {p1, p2, v0}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 79
    const-string p1, ""

    return-object p1
.end method

.method public b(Landroid/content/Context;)V
    .registers 12

    const-string v0, "init lastPlatformNode platform="

    const-string v1, "lastFrom:"

    const-string v2, "on_tcp_connected init"

    .line 6
    const-string v3, "MTPlatformBusiness"

    invoke-static {v3, v2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/t0;->c(Landroid/content/Context;)V

    .line 8
    :try_start_e
    invoke-static {p1}, Lcom/engagelab/privates/common/b1;->b(Landroid/content/Context;)I

    move-result v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v2, :cond_83

    .line 10
    invoke-static {p1}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    const-string v2, "_"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    const/4 v2, 0x1

    .line 14
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v2, 0x2

    .line 15
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " m_code="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ""
    :try_end_71
    .catchall {:try_start_e .. :try_end_71} :catchall_7f

    move-object v4, p0

    move-object v5, p1

    .line 17
    :try_start_73
    invoke-virtual/range {v4 .. v9}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    const-string p1, ""

    .line 18
    invoke-static {v5, p1}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_7c

    goto :goto_90

    :catchall_7c
    move-exception v0

    :goto_7d
    move-object p1, v0

    goto :goto_86

    :catchall_7f
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    goto :goto_7d

    :cond_83
    move-object v4, p0

    move-object v5, p1

    goto :goto_90

    .line 19
    :goto_86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastFrom failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p1, v0, v3}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    :goto_90
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9d

    return-void

    .line 23
    :cond_9d
    invoke-static {v5}, Lcom/engagelab/privates/common/global/MTGlobal;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "manufacturer is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", countryCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v5}, Lcom/engagelab/privates/common/t0;->d(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, v5, v0}, Lcom/engagelab/privates/common/t0;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 27
    invoke-virtual {p0, v5, p1}, Lcom/engagelab/privates/common/t0;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 28
    invoke-virtual {p0, v5, p1}, Lcom/engagelab/privates/common/t0;->f(Landroid/content/Context;Ljava/lang/String;)Z

    .line 29
    invoke-virtual {p0, v5, p1}, Lcom/engagelab/privates/common/t0;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 30
    invoke-virtual {p0, v5, p1}, Lcom/engagelab/privates/common/t0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 31
    invoke-virtual {p0, v5, p1}, Lcom/engagelab/privates/common/t0;->h(Landroid/content/Context;Ljava/lang/String;)Z

    .line 32
    invoke-virtual {p0, v5, p1}, Lcom/engagelab/privates/common/t0;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 33
    invoke-virtual {p0, v5, p1}, Lcom/engagelab/privates/common/t0;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 34
    iget-object p1, v4, Lcom/engagelab/privates/common/t0;->e:Landroid/os/Bundle;

    const/16 v0, 0xc1d

    invoke-static {v5, v0, p1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 19

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v1, "_"

    const-string v3, " currentFrom="

    const-string v7, "MTPlatformBusiness"

    const-string v4, "oneTokenFailed, one method obtain, orFrom="

    const-string v5, "onTokenFailed, all method obtain orFrom="

    const-string v6, "onPlatformNode platform="

    :try_start_10
    const-string v8, "platform"

    .line 47
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v8

    const-string v9, "code"

    .line 48
    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "mCode"

    .line 49
    invoke-virtual {v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "type"

    .line 50
    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "from"

    .line 51
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    invoke-static {v2, v8}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v12

    .line 53
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " code="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " m_code="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mToken="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_10 .. :try_end_67} :catchall_a5

    const/16 v6, 0xf3c

    const-string v13, ""

    if-ne v6, v11, :cond_e3

    .line 54
    :try_start_6d
    invoke-static {v2}, Lcom/engagelab/privates/common/b1;->b(Landroid/content/Context;)I

    move-result v6
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_a5

    xor-int v11, v6, v0

    const/4 v15, 0x3

    const-string v14, " lastFrom="

    if-ne v11, v15, :cond_a7

    .line 55
    :try_start_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xbbd

    move-object/from16 v1, p0

    move v3, v8

    move v5, v10

    move-object v6, v12

    .line 56
    invoke-virtual/range {v1 .. v6}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;I)V

    .line 58
    invoke-static {v2, v13}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_a5
    move-exception v0

    goto :goto_f8

    :cond_a7
    move v5, v8

    move v8, v10

    .line 59
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;I)V

    .line 60
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e3
    move-object/from16 v1, p0

    move v3, v8

    move v4, v9

    move v5, v10

    move-object v6, v12

    .line 62
    invoke-virtual/range {v1 .. v6}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    const/16 v0, 0xf3d

    if-ne v0, v11, :cond_f7

    const/4 v0, 0x0

    .line 63
    invoke-static {v2, v0}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;I)V

    .line 64
    invoke-static {v2, v13}, Lcom/engagelab/privates/common/b1;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_78 .. :try_end_f7} :catchall_a5

    :cond_f7
    return-void

    .line 65
    :goto_f8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportPlatformNode failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {v0, v1, v7}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V
    .registers 7

    .line 39
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    if-eqz v0, :cond_4e

    .line 40
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 p3, 0x0

    goto :goto_2f

    .line 41
    :cond_22
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    if-eqz p3, :cond_4d

    .line 42
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    .line 43
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "is_repetition_send"

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p3, p2, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    sget-object p2, Lcom/engagelab/privates/push/MTPush;->a:Ljava/lang/String;

    new-instance v0, Lcom/engagelab/privates/common/t0$a;

    invoke-direct {v0, p0, p1, p3}, Lcom/engagelab/privates/common/t0$a;-><init>(Lcom/engagelab/privates/common/t0;Landroid/content/Context;Landroid/os/Bundle;)V

    const-wide/16 v1, 0x3e8

    invoke-static {p1, p2, v0, v1, v2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->postMessageDelayed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;J)V

    :cond_4d
    return-void

    .line 46
    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "cache not has platformToken, platformToken:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MTPlatformBusiness"

    invoke-static {p2, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 3

    .line 11
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->i:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 13
    iput-object p1, p0, Lcom/engagelab/privates/common/t0;->i:Ljava/lang/String;

    return-void

    .line 14
    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 15
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 17
    iget-object v0, p0, Lcom/engagelab/privates/common/t0;->d:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/engagelab/privates/common/t0;->f:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/engagelab/privates/common/t0;->i:Ljava/lang/String;

    :cond_2c
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 13

    const-string v0, "protocol"

    .line 21
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 22
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v0

    .line 23
    iget-object p2, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    return-void

    .line 24
    :cond_19
    iget-object p2, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 25
    iget-object v2, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v6

    .line 27
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPlatformTokenFailed, rid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", platformToken:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTPlatformBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {p1, v6}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_71

    const-string v0, "no need update platform state"

    .line 31
    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xbbe

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    .line 32
    invoke-virtual/range {v4 .. v9}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    .line 33
    invoke-virtual {p0, v5, p2, v2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V

    return-void

    :cond_71
    move-object v4, p0

    move-object v5, p1

    .line 34
    invoke-static {v5}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getPlatformState(Landroid/content/Context;)B

    move-result p1

    or-int/2addr p1, v6

    int-to-byte p1, p1

    const/16 v0, 0x8

    if-ne v6, v0, :cond_81

    and-int/lit16 p1, p1, 0xdf

    :goto_7f
    int-to-byte p1, p1

    goto :goto_84

    :cond_81
    or-int/lit16 p1, p1, 0x80

    goto :goto_7f

    .line 35
    :goto_84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "set platform state:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v5, p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setPlatformState(Landroid/content/Context;B)V

    const/16 v7, 0xbbe

    const/4 v8, 0x0

    .line 37
    invoke-virtual/range {v4 .. v9}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    .line 38
    invoke-virtual {p0, v5, p2, v2}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V

    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "xiaomi"

    .line 5
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string v0, "blackshark"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_12

    return v1

    :cond_12
    :try_start_12
    const-string p2, "com.engagelab.privates.push.platform.mi.global.MTMiGlobal"

    .line 6
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 8
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_23

    const/4 p1, 0x1

    return p1

    :catchall_23
    const-string p2, "MTPlatformBusiness"

    const-string v0, "not integrated global mi.aar"

    .line 9
    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v4, 0x1

    const/16 v5, 0xbb9

    move-object v2, p0

    move-object v3, p1

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    return v1
.end method

.method public final d(Landroid/content/Context;)V
    .registers 4

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_7

    goto :goto_15

    :cond_7
    const-string v0, "notification"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 9
    invoke-static {p1}, Lcom/getcapacitor/plugin/util/a;->C(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_16

    :goto_15
    return-void

    .line 10
    :cond_16
    invoke-static {}, Lr1/a;->a()Landroid/app/NotificationChannel;

    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Lcom/getcapacitor/plugin/util/a;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 16

    const-string v0, "protocol"

    .line 12
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/core/api/MTProtocol;

    .line 13
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getRid()J

    move-result-wide v0

    .line 14
    invoke-virtual {p2}, Lcom/engagelab/privates/core/api/MTProtocol;->getBody()[B

    move-result-object p2

    .line 15
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 17
    iget-object p2, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "onPlatformTokenFailed, rid:"

    const-string v3, "MTPlatformBusiness"

    if-nez p2, :cond_3d

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", internal error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 19
    :cond_3d
    iget-object p2, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    .line 20
    iget-object v4, p0, Lcom/engagelab/privates/common/t0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v9

    .line 22
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v12

    if-eqz v6, :cond_83

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", code:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xbbe

    move-object v2, p0

    move-object v3, p1

    move v4, v9

    move-object v7, v12

    .line 24
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    move-object v7, v2

    move-object v8, v3

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, v8, p2, p1}, Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V

    return-void

    :cond_83
    move-object v7, p0

    move-object v8, p1

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onPlatformTokenSuccess, rid:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", platformToken:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v8, v9}, Lcom/engagelab/privates/common/a1;->b(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v12, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_bb

    const-string p1, "no need update platform state"

    .line 29
    invoke-static {v3, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xbbf

    const/4 v11, 0x0

    .line 30
    invoke-virtual/range {v7 .. v12}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    .line 31
    invoke-virtual {p0, v8}, Lcom/engagelab/privates/common/t0;->g(Landroid/content/Context;)V

    return-void

    .line 32
    :cond_bb
    invoke-static {v8, v9, v12}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;BLjava/lang/String;)V

    .line 33
    invoke-static {v8}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getPlatformState(Landroid/content/Context;)B

    move-result p1

    or-int/2addr p1, v9

    int-to-byte p1, p1

    const/16 p2, 0x8

    if-ne v9, p2, :cond_cc

    or-int/lit8 p1, p1, 0x20

    :goto_ca
    int-to-byte p1, p1

    goto :goto_cf

    :cond_cc
    and-int/lit8 p1, p1, 0x7f

    goto :goto_ca

    .line 34
    :goto_cf
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "set platform state:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {v8, p1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setPlatformState(Landroid/content/Context;B)V

    const/16 v10, 0xbbf

    const/4 v11, 0x0

    move-object v7, p0

    .line 36
    invoke-virtual/range {v7 .. v12}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    .line 37
    invoke-virtual {p0, v8}, Lcom/engagelab/privates/common/t0;->g(Landroid/content/Context;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CN"

    .line 1
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    return v0

    .line 2
    :cond_a
    const-class p2, Lcom/engagelab/privates/push/platform/google/MTGoogle;

    sget v1, Lcom/engagelab/privates/push/platform/google/MTGoogle;->d:I

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 4
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    const/4 p1, 0x1

    return p1

    :catchall_19
    const-string p2, "MTPlatformBusiness"

    const-string v1, "not integrated google.aar"

    .line 5
    invoke-static {p2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, ""

    const/16 v4, 0x8

    const/16 v5, 0xbb9

    move-object v2, p0

    move-object v3, p1

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    return v0
.end method

.method public e(Landroid/content/Context;)V
    .registers 2

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/engagelab/privates/common/t0;->c:Z

    return-void
.end method

.method public e(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "message"

    .line 9
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    if-nez v0, :cond_b

    return-void

    .line 10
    :cond_b
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v0

    .line 12
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;BLjava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "processMainToken:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MTPlatformBusiness"

    invoke-static {v1, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/t0;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    const/16 v0, 0xf8b

    .line 15
    invoke-static {p1, v0, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "huawei"

    .line 1
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "MTPlatformBusiness"

    if-nez v0, :cond_25

    const-string v0, "honor"

    .line 2
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/t0;->f(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1f

    invoke-static {}, Lcom/engagelab/privates/common/t0;->c()Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_25

    :cond_1f
    const-string p1, "not integrate huawei"

    .line 3
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_25
    :goto_25
    :try_start_25
    const-string p2, "com.engagelab.privates.push.platform.huawei.MTHuawei"

    .line 4
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 6
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_36

    const/4 p1, 0x1

    return p1

    :catchall_36
    const-string p2, "not integrated huawei.aar"

    .line 7
    invoke-static {v1, p2}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v4, 0x2

    const/16 v5, 0xbb9

    move-object v2, p0

    move-object v3, p1

    .line 8
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    :goto_46
    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 7

    .line 17
    const-class v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "message"

    .line 18
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    if-nez p2, :cond_14

    goto :goto_1a

    .line 19
    :cond_14
    invoke-static {p1}, Lcom/engagelab/privates/common/global/MTGlobal;->getCommonReceiver(Landroid/content/Context;)Lcom/engagelab/privates/common/component/MTCommonReceiver;

    move-result-object v0

    if-nez v0, :cond_1b

    :goto_1a
    return-void

    .line 20
    :cond_1b
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p2}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->getPlatform()B

    move-result v2

    .line 22
    invoke-static {p1, v2, v1}, Lcom/engagelab/privates/common/a1;->a(Landroid/content/Context;BLjava/lang/String;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processMainTokenToUser:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MTPlatformBusiness"

    invoke-static {v2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/engagelab/privates/common/component/MTCommonReceiver;->onPlatformToken(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;)V

    return-void
.end method

.method public final f(Landroid/content/Context;)Z
    .registers 11

    const-string v0, "MTPlatformBusiness"

    const-string v1, "honor available :"

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "com.hihonor.push.app_id"

    .line 1
    invoke-static {p1, v3}, Lcom/engagelab/privates/common/global/MTGlobal;->getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string p1, "not support honor push, honor appId is empty"

    .line 3
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catchall_17
    move-exception p1

    goto :goto_59

    :cond_19
    const-string v3, "com.hihonor.push.sdk.HonorPushClient"

    .line 4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_17

    const-string v4, "getInstance"

    const/4 v5, 0x0

    .line 5
    :try_start_22
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_17

    const-string v5, "checkSupportHonorPush"

    const/4 v6, 0x1

    :try_start_31
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 8
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_31 .. :try_end_58} :catchall_17

    return p1

    .line 10
    :goto_59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isSupportHonorPush error:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "honor"

    .line 11
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return v0

    :cond_a
    :try_start_a
    const-string p2, "com.engagelab.privates.push.platform.honor.MTHonor"

    .line 12
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 14
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    const/4 p1, 0x1

    return p1

    :catchall_1b
    const-string p2, "MTPlatformBusiness"

    const-string v1, "not integrated honor.aar"

    .line 15
    invoke-static {p2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v4, 0x7

    const/16 v5, 0xbb9

    move-object v2, p0

    move-object v3, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    return v0
.end method

.method public final g(Landroid/content/Context;)V
    .registers 5

    .line 11
    iget-boolean v0, p0, Lcom/engagelab/privates/common/t0;->f:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 12
    :goto_6
    iget-object v1, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 13
    iget-object v1, p0, Lcom/engagelab/privates/common/t0;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;Ljava/lang/Byte;)Z

    move-result v2

    if-nez v2, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 15
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "toUserClear not Success platform: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MTPlatformBusiness"

    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_33
    new-instance v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    invoke-direct {v0}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;-><init>()V

    const/16 v1, -0x80

    .line 17
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setPlatform(B)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    move-result-object v0

    const-string v1, ""

    .line 18
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setToken(Ljava/lang/String;)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    move-result-object v0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/engagelab/privates/push/api/PlatformTokenMessage;->setIsUserSettings(Z)Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    move-result-object v0

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v0, 0xbd0

    .line 22
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToMainProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    return-void
.end method

.method public g(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 6

    .line 7
    const-class v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "message"

    .line 8
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/engagelab/privates/push/api/PlatformTokenMessage;

    const-string v1, "is_repetition_send"

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 10
    invoke-virtual {p0, p1, v0, p2}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V

    return-void
.end method

.method public final g(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "xiaomi"

    .line 1
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    const-string v0, "blackshark"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_12

    return v1

    :cond_12
    :try_start_12
    const-string p2, "com.engagelab.privates.push.platform.mi.MTMi"

    .line 2
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 4
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_23

    const/4 p1, 0x1

    return p1

    :catchall_23
    const-string p2, "MTPlatformBusiness"

    const-string v0, "not integrated mi.aar"

    .line 5
    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v4, 0x1

    const/16 v5, 0xbb9

    move-object v2, p0

    move-object v3, p1

    .line 6
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    return v1
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    .line 1
    const-string v0, "meizu"

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_a

    .line 9
    .line 10
    return v0

    .line 11
    :cond_a
    :try_start_a
    const-string p2, "com.engagelab.privates.push.platform.meizu.MTMeizu"

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :catchall_1b
    const-string p2, "MTPlatformBusiness"

    .line 29
    .line 30
    const-string v1, "not integrated meizu.aar"

    .line 31
    .line 32
    invoke-static {p2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v7, ""

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    const/16 v5, 0xbb9

    .line 40
    .line 41
    move-object v2, p0

    .line 42
    move-object v3, p1

    .line 43
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v0
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    .line 1
    const-string v0, "oppo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1a

    .line 9
    .line 10
    const-string v0, "realme"

    .line 11
    .line 12
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1a

    .line 17
    .line 18
    const-string v0, "oneplus"

    .line 19
    .line 20
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_1a

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1a
    :try_start_1a
    const-string p2, "com.engagelab.privates.push.platform.oppo.MTOppo"

    .line 28
    .line 29
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_2b

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    :catchall_2b
    const-string p2, "MTPlatformBusiness"

    .line 45
    .line 46
    const-string v0, "not integrated oppo.aar"

    .line 47
    .line 48
    invoke-static {p2, v0}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const-string v7, ""

    .line 53
    .line 54
    const/4 v4, 0x4

    .line 55
    const/16 v5, 0xbb9

    .line 56
    .line 57
    move-object v2, p0

    .line 58
    move-object v3, p1

    .line 59
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v1
.end method

.method public final j(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    .line 1
    const-string v0, "vivo"

    .line 2
    .line 3
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p2, :cond_a

    .line 9
    .line 10
    return v0

    .line 11
    :cond_a
    :try_start_a
    const-string p2, "com.engagelab.privates.push.platform.vivo.MTVivo"

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Lcom/engagelab/privates/common/observer/MTObserver;

    .line 22
    .line 23
    invoke-static {p1, p2}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->observer(Landroid/content/Context;Lcom/engagelab/privates/common/observer/MTObserver;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :catchall_1b
    const-string p2, "MTPlatformBusiness"

    .line 29
    .line 30
    const-string v1, "not integrated vivo.aar"

    .line 31
    .line 32
    invoke-static {p2, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const-string v7, ""

    .line 37
    .line 38
    const/4 v4, 0x5

    .line 39
    const/16 v5, 0xbb9

    .line 40
    .line 41
    move-object v2, p0

    .line 42
    move-object v3, p1

    .line 43
    invoke-virtual/range {v2 .. v7}, Lcom/engagelab/privates/common/t0;->a(Landroid/content/Context;BIILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v0
.end method

###### Class com.engagelab.privates.common.t0.a (com.engagelab.privates.common.t0$a)
.class public Lcom/engagelab/privates/common/t0$a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/engagelab/privates/common/t0;->b(Landroid/content/Context;Lcom/engagelab/privates/push/api/PlatformTokenMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/engagelab/privates/common/t0;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lcom/engagelab/privates/common/t0$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/engagelab/privates/common/t0$a;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/engagelab/privates/common/t0$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/engagelab/privates/common/t0$a;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    const/16 v2, 0xf8b

    .line 6
    .line 7
    invoke-static {v0, v2, v1}, Lcom/engagelab/privates/common/api/MTCommonPrivatesApi;->sendMessageToRemoteProcess(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
