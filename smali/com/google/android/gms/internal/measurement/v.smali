###### Class com.google.android.gms.internal.measurement.v (com.google.android.gms.internal.measurement.v)
.class public final Lcom/google/android/gms/internal/measurement/v;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Lcom/google/firebase/messaging/y;

.field public b:Lcom/google/firebase/messaging/y;

.field public final c:Lc5/h;

.field public final d:Lcom/google/android/gms/internal/measurement/y4;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/y;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/firebase/messaging/y;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lcom/google/firebase/messaging/y;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/firebase/messaging/y;

    .line 21
    .line 22
    new-instance v1, Lc5/h;

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-direct {v1, v2}, Lc5/h;-><init>(I)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/google/android/gms/internal/measurement/c;

    .line 29
    .line 30
    const-string v3, ""

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/c;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, v1, Lc5/h;->b:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v2, Lcom/google/android/gms/internal/measurement/c;

    .line 41
    .line 42
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/c;-><init>(Ljava/lang/String;JLjava/util/Map;)V

    .line 43
    .line 44
    .line 45
    iput-object v2, v1, Lc5/h;->c:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v2, v1, Lc5/h;->d:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->c:Lc5/h;

    .line 55
    .line 56
    new-instance v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 57
    .line 58
    const/16 v2, 0x8

    .line 59
    .line 60
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/y4;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 64
    .line 65
    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/a;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p0, v1, Lcom/google/android/gms/internal/measurement/a;->b:Lcom/google/android/gms/internal/measurement/v;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Lcom/google/android/gms/internal/measurement/o6;

    .line 76
    .line 77
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ljava/util/HashMap;

    .line 80
    .line 81
    const-string v3, "internal.registerCallback"

    .line 82
    .line 83
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v1, Lcom/google/android/gms/internal/measurement/a;

    .line 87
    .line 88
    const/4 v2, 0x1

    .line 89
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/a;-><init>(I)V

    .line 90
    .line 91
    .line 92
    iput-object p0, v1, Lcom/google/android/gms/internal/measurement/a;->b:Lcom/google/android/gms/internal/measurement/v;

    .line 93
    .line 94
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Ljava/util/HashMap;

    .line 97
    .line 98
    const-string v2, "internal.eventLogger"

    .line 99
    .line 100
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/k4;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    :try_start_2
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/firebase/messaging/y;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/firebase/messaging/y;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->o()Lcom/google/android/gms/internal/measurement/j6;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/firebase/messaging/y;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    new-array v4, v3, [Lcom/google/android/gms/internal/measurement/l4;

    .line 21
    .line 22
    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, [Lcom/google/android/gms/internal/measurement/l4;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/messaging/y;->H(Lcom/google/firebase/messaging/y;[Lcom/google/android/gms/internal/measurement/l4;)Lcom/google/android/gms/internal/measurement/n;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    instance-of v1, v1, Lcom/google/android/gms/internal/measurement/h;

    .line 33
    .line 34
    if-nez v1, :cond_b5

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/k4;->n()Lcom/google/android/gms/internal/measurement/i4;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/i4;->p()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_b4

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/google/android/gms/internal/measurement/j4;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/j4;->o()Lcom/google/android/gms/internal/measurement/j6;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/j4;->n()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2f

    .line 77
    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcom/google/android/gms/internal/measurement/l4;

    .line 83
    .line 84
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/firebase/messaging/y;

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/l4;

    .line 88
    .line 89
    aput-object v4, v6, v3

    .line 90
    .line 91
    invoke-virtual {v0, v5, v6}, Lcom/google/firebase/messaging/y;->H(Lcom/google/firebase/messaging/y;[Lcom/google/android/gms/internal/measurement/l4;)Lcom/google/android/gms/internal/measurement/n;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/m;

    .line 96
    .line 97
    if-eqz v5, :cond_ac

    .line 98
    .line 99
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/firebase/messaging/y;

    .line 100
    .line 101
    invoke-virtual {v5, v1}, Lcom/google/firebase/messaging/y;->L(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-nez v6, :cond_6c

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    goto :goto_76

    .line 109
    :cond_6c
    invoke-virtual {v5, v1}, Lcom/google/firebase/messaging/y;->I(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    instance-of v6, v5, Lcom/google/android/gms/internal/measurement/j;

    .line 114
    .line 115
    if-eqz v6, :cond_98

    .line 116
    .line 117
    check-cast v5, Lcom/google/android/gms/internal/measurement/j;

    .line 118
    .line 119
    :goto_76
    if-eqz v5, :cond_84

    .line 120
    .line 121
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/firebase/messaging/y;

    .line 122
    .line 123
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/measurement/j;->e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;

    .line 128
    .line 129
    .line 130
    goto :goto_47

    .line 131
    :catchall_82
    move-exception p1

    .line 132
    goto :goto_bd

    .line 133
    :cond_84
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    const-string v2, "Rule function is undefined: "

    .line 138
    .line 139
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_98
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 154
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v2, "Invalid function name: "

    .line 158
    .line 159
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1

    .line 173
    :cond_ac
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 174
    .line 175
    const-string v0, "Invalid rule definition"

    .line 176
    .line 177
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_b4
    return-void

    .line 182
    :cond_b5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 183
    .line 184
    const-string v0, "Program loading failed"

    .line 185
    .line 186
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p1
    :try_end_bd
    .catchall {:try_start_2 .. :try_end_bd} :catchall_82

    .line 190
    :goto_bd
    new-instance v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 191
    .line 192
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/c;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v;->c:Lc5/h;

    .line 2
    .line 3
    :try_start_2
    iput-object p1, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/c;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/measurement/c;

    .line 10
    .line 11
    iput-object p1, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object p1, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/v;->a:Lcom/google/firebase/messaging/y;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lcom/google/firebase/messaging/y;

    .line 25
    .line 26
    const-string v1, "runtime.counter"

    .line 27
    .line 28
    new-instance v2, Lcom/google/android/gms/internal/measurement/g;

    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/v;->d:Lcom/google/android/gms/internal/measurement/y4;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v;->b:Lcom/google/firebase/messaging/y;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/y4;->K(Lcom/google/firebase/messaging/y;Lc5/h;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v0, Lc5/h;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lcom/google/android/gms/internal/measurement/c;

    .line 56
    .line 57
    iget-object v1, v0, Lc5/h;->b:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Lcom/google/android/gms/internal/measurement/c;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/c;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4f

    .line 66
    .line 67
    iget-object p1, v0, Lc5/h;->d:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result p1
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_51

    .line 75
    if-nez p1, :cond_4d

    .line 76
    .line 77
    goto :goto_4f

    .line 78
    :cond_4d
    const/4 p1, 0x0

    .line 79
    return p1

    .line 80
    :cond_4f
    :goto_4f
    const/4 p1, 0x1

    .line 81
    return p1

    .line 82
    :catchall_51
    move-exception p1

    .line 83
    new-instance v0, Lcom/google/android/gms/internal/measurement/k0;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v0
.end method
