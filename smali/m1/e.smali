###### Class m1.e (m1.e)
.class public final Lm1/e;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lm1/c;

.field public final d:Lcom/google/android/gms/internal/measurement/y4;

.field public final e:Ljava/lang/String;

.field public volatile f:Z

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/lottery/app/GameActivity;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lm1/e;->f:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lm1/e;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    if-nez p2, :cond_11

    .line 15
    .line 16
    const-string p2, ""

    .line 17
    .line 18
    :cond_11
    iput-object p2, p0, Lm1/e;->a:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "gc#"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, "@"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lm1/e;->e:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz p3, :cond_38

    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_38

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    :cond_38
    iput-boolean v0, p0, Lm1/e;->b:Z

    .line 58
    .line 59
    const-string v1, "GameResourceCache"

    .line 60
    .line 61
    if-eqz v0, :cond_6a

    .line 62
    .line 63
    new-instance p3, Lm1/c;

    .line 64
    .line 65
    invoke-direct {p3, p1, p2}, Lm1/c;-><init>(Lcom/lottery/app/GameActivity;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object p3, p0, Lm1/e;->c:Lm1/c;

    .line 69
    .line 70
    new-instance p1, Lcom/google/android/gms/internal/measurement/y4;

    .line 71
    .line 72
    const/16 v0, 0x13

    .line 73
    .line 74
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lm1/e;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "enabled vendor="

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p2, " dir="

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object p2, p3, Lm1/c;->a:Ljava/io/File;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6a
    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lm1/e;->c:Lm1/c;

    .line 109
    .line 110
    iput-object p1, p0, Lm1/e;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 111
    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v0, "disabled vendor="

    .line 115
    .line 116
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p2, " isCache="

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;J)Landroid/webkit/WebResourceResponse;
    .registers 13

    .line 1
    new-instance v5, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Access-Control-Allow-Origin"

    .line 7
    .line 8
    const-string v1, "*"

    .line 9
    .line 10
    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v0, "X-Game-Cache"

    .line 14
    .line 15
    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    cmp-long p3, p4, v0

    .line 21
    .line 22
    if-ltz p3, :cond_20

    .line 23
    .line 24
    const-string p3, "Content-Length"

    .line 25
    .line 26
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    invoke-virtual {v5, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_20
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 34
    .line 35
    const/4 p3, 0x0

    .line 36
    if-eqz p0, :cond_2e

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    if-eqz p4, :cond_2c

    .line 43
    .line 44
    goto :goto_2e

    .line 45
    :cond_2c
    move-object v1, p0

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    :goto_2e
    move-object v1, p3

    .line 48
    :goto_2f
    if-eqz p1, :cond_3a

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_38

    .line 55
    .line 56
    goto :goto_3a

    .line 57
    :cond_38
    move-object v2, p1

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    :goto_3a
    move-object v2, p3

    .line 60
    :goto_3b
    const/16 v3, 0xc8

    .line 61
    .line 62
    const-string v4, "OK"

    .line 63
    .line 64
    move-object v6, p2

    .line 65
    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method
