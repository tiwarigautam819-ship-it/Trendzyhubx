###### Class com.engagelab.privates.push.platform.google.callback.MTGoogleListener (com.engagelab.privates.push.platform.google.callback.MTGoogleListener)
.class public Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lp4/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp4/d;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MTGoogleListener"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(Lp4/i;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp4/i;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "MTGoogleListener"

    .line 2
    .line 3
    if-nez p1, :cond_19

    .line 4
    .line 5
    const-string p1, "onTokenFailed"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;->context:Landroid/content/Context;

    .line 15
    .line 16
    const/16 v5, 0xf3c

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/16 v3, 0xbbb

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onNode(Landroid/content/Context;IIII)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_19
    invoke-virtual {p1}, Lp4/i;->g()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_44

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "onTokenFailed "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lp4/i;->d()Ljava/lang/Exception;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;->context:Landroid/content/Context;

    .line 58
    .line 59
    const/16 v5, 0xf3c

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    const/16 v3, 0xbbb

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-virtual/range {v1 .. v6}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onNode(Landroid/content/Context;IIII)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_44
    invoke-virtual {p1}, Lp4/i;->e()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_65

    .line 80
    .line 81
    const-string p1, "onTokenFailed:get token is empty"

    .line 82
    .line 83
    invoke-static {v0, p1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;->context:Landroid/content/Context;

    .line 91
    .line 92
    const/16 v5, 0xf3c

    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    const/16 v3, 0xbbb

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-virtual/range {v1 .. v6}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onNode(Landroid/content/Context;IIII)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v2, "onTokenSuccess:get token is "

    .line 105
    .line 106
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/engagelab/privates/common/log/MTCommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->getInstance()Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/engagelab/privates/push/platform/google/callback/MTGoogleListener;->context:Landroid/content/Context;

    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    invoke-virtual {v0, v1, p1, v2}, Lcom/engagelab/privates/push/platform/google/business/MTGoogleBusiness;->onToken(Landroid/content/Context;Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
