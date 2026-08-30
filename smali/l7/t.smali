###### Class l7.t (l7.t)
.class public abstract Ll7/t;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 2
    .line 3
    sget v1, Lp7/r;->a:I

    .line 4
    .line 5
    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_a

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_12

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v0, v1

    .line 20
    :goto_13
    if-nez v0, :cond_18

    .line 21
    .line 22
    sget-object v0, Ll7/s;->i:Ll7/s;

    .line 23
    .line 24
    goto :goto_25

    .line 25
    :cond_18
    sget-object v0, Ll7/x;->a:Lq7/d;

    .line 26
    .line 27
    sget-object v0, Lp7/n;->a:Lm7/c;

    .line 28
    .line 29
    iget-object v2, v0, Lm7/c;->e:Lm7/c;

    .line 30
    .line 31
    if-eqz v0, :cond_21

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_21
    if-nez v1, :cond_25

    .line 35
    .line 36
    sget-object v0, Ll7/s;->i:Ll7/s;

    .line 37
    .line 38
    :cond_25
    :goto_25
    return-void
.end method
