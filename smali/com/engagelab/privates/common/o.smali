###### Class com.engagelab.privates.common.o (com.engagelab.privates.common.o)
.class public Lcom/engagelab/privates/common/o;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile a:Lcom/engagelab/privates/common/o;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/engagelab/privates/common/o;
    .registers 2

    .line 1
    sget-object v0, Lcom/engagelab/privates/common/o;->a:Lcom/engagelab/privates/common/o;

    if-nez v0, :cond_19

    .line 2
    const-class v0, Lcom/engagelab/privates/common/o;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/engagelab/privates/common/o;->a:Lcom/engagelab/privates/common/o;

    if-nez v1, :cond_15

    .line 4
    new-instance v1, Lcom/engagelab/privates/common/o;

    invoke-direct {v1}, Lcom/engagelab/privates/common/o;-><init>()V

    sput-object v1, Lcom/engagelab/privates/common/o;->a:Lcom/engagelab/privates/common/o;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 5
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 6
    :cond_19
    :goto_19
    sget-object v0, Lcom/engagelab/privates/common/o;->a:Lcom/engagelab/privates/common/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    .line 7
    invoke-static {}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->getResetOnDeviceChangeEnabled()Z

    move-result v0

    const-string v1, "RegFingerHelper"

    if-nez v0, :cond_e

    const-string p1, "device migration is disabled, skip check"

    .line 8
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_e
    :try_start_e
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string p1, "current device model is empty, skip check"

    .line 11
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1c
    move-exception p1

    goto :goto_30

    .line 12
    :cond_1e
    invoke-virtual {p0, p1, v0}, Lcom/engagelab/privates/common/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, "device migration detected, registration info cleared"

    .line 13
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    const-string p1, "device model unchanged, no migration needed"

    .line 14
    invoke-static {v1, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_1c

    return-void

    .line 15
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkDeviceMigration failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p1, v0, v1}, Lq2/x;->j(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 21
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/o;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 24
    :cond_f
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 25
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/o;->b(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/engagelab/privates/common/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1d
    return v2
.end method

.method public final b(Landroid/content/Context;)V
    .registers 6

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;J)V

    .line 3
    const-string v2, ""

    invoke-static {p1, v2}, Lcom/engagelab/privates/common/r;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v2}, Lcom/engagelab/privates/common/r;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v3}, Lcom/engagelab/privates/common/r;->d(Landroid/content/Context;I)V

    .line 6
    invoke-static {p1, v0, v1}, Lcom/engagelab/privates/common/r;->a(Landroid/content/Context;J)V

    .line 7
    invoke-static {v0, v1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setUserId(J)V

    .line 8
    invoke-static {v2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setRegistrationId(Ljava/lang/String;)V

    .line 9
    invoke-static {v2}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setPassword(Ljava/lang/String;)V

    .line 10
    invoke-static {v3}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setSeedId(I)V

    .line 11
    invoke-static {v0, v1}, Lcom/engagelab/privates/core/global/MTCoreGlobal;->setServerTime(J)V

    .line 12
    invoke-static {p1, v2}, Lcom/engagelab/privates/common/global/MTGlobal;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/o;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "device_model"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/engagelab/privates/common/o;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "device_model"

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 1
    const-string v0, "com.engagelab.privates.core.prefs"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
