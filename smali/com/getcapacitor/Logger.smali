###### Class com.getcapacitor.Logger (com.getcapacitor.Logger)
.class public Lcom/getcapacitor/Logger;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final LOG_TAG_CORE:Ljava/lang/String; = "Capacitor"

.field public static config:Lcom/getcapacitor/CapConfig;

.field private static instance:Lcom/getcapacitor/Logger;


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

.method public static debug(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 3

    .line 1
    const-string v0, "Capacitor"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 3
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    const-string v0, "Capacitor"

    invoke-static {v0, p0, p1}, Lcom/getcapacitor/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getInstance()Lcom/getcapacitor/Logger;
    .registers 1

    .line 1
    sget-object v0, Lcom/getcapacitor/Logger;->instance:Lcom/getcapacitor/Logger;

    .line 2
    .line 3
    if-nez v0, :cond_b

    .line 4
    .line 5
    new-instance v0, Lcom/getcapacitor/Logger;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/getcapacitor/Logger;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/getcapacitor/Logger;->instance:Lcom/getcapacitor/Logger;

    .line 11
    .line 12
    :cond_b
    sget-object v0, Lcom/getcapacitor/Logger;->instance:Lcom/getcapacitor/Logger;

    .line 13
    .line 14
    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init(Lcom/getcapacitor/CapConfig;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/getcapacitor/Logger;->getInstance()Lcom/getcapacitor/Logger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {v0, p0}, Lcom/getcapacitor/Logger;->loadConfig(Lcom/getcapacitor/CapConfig;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private loadConfig(Lcom/getcapacitor/CapConfig;)V
    .registers 2

    .line 1
    sput-object p1, Lcom/getcapacitor/Logger;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    return-void
.end method

.method public static shouldLog()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/getcapacitor/Logger;->config:Lcom/getcapacitor/CapConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_d

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/getcapacitor/CapConfig;->isLoggingEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public static varargs tags([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    if-eqz p0, :cond_1a

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_1a

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Capacitor/"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1a
    const-string p0, "Capacitor"

    .line 28
    .line 29
    return-object p0
.end method

.method public static verbose(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .registers 2

    .line 1
    const-string v0, "Capacitor"

    invoke-static {v0, p0}, Lcom/getcapacitor/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/getcapacitor/Logger;->shouldLog()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 3
    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
