###### Class com.google.android.gms.internal.measurement.sa (com.google.android.gms.internal.measurement.sa)
.class public final Lcom/google/android/gms/internal/measurement/sa;
.super Lcom/google/android/gms/internal/measurement/j;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final c:Z

.field public final d:Z

.field public final synthetic e:Lcom/google/android/gms/internal/measurement/g6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/g6;ZZ)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/sa;->e:Lcom/google/android/gms/internal/measurement/g6;

    .line 2
    .line 3
    const-string p1, "log"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/j;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/sa;->c:Z

    .line 9
    .line 10
    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/sa;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final e(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/n;
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, "log"

    .line 9
    .line 10
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/p4;->n(ILjava/lang/String;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x0

    .line 18
    sget-object v7, Lcom/google/android/gms/internal/measurement/ra;->c:Lcom/google/android/gms/internal/measurement/ra;

    .line 19
    .line 20
    sget-object v12, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 21
    .line 22
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/sa;->e:Lcom/google/android/gms/internal/measurement/g6;

    .line 23
    .line 24
    if-ne v4, v3, :cond_3a

    .line 25
    .line 26
    iget-object v3, v6, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v6, v3

    .line 29
    check-cast v6, Lcom/google/android/gms/internal/measurement/ta;

    .line 30
    .line 31
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 36
    .line 37
    iget-object v3, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 40
    .line 41
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 50
    .line 51
    iget-boolean v10, v0, Lcom/google/android/gms/internal/measurement/sa;->c:Z

    .line 52
    .line 53
    iget-boolean v11, v0, Lcom/google/android/gms/internal/measurement/sa;->d:Z

    .line 54
    .line 55
    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/measurement/ta;->zza(Lcom/google/android/gms/internal/measurement/ra;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 56
    .line 57
    .line 58
    return-object v12

    .line 59
    :cond_3a
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 64
    .line 65
    iget-object v5, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Lcom/google/android/gms/internal/measurement/y4;

    .line 68
    .line 69
    iget-object v8, v1, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v8, Lcom/google/android/gms/internal/measurement/y4;

    .line 72
    .line 73
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/p4;->m(D)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    const/4 v5, 0x5

    .line 90
    const/4 v9, 0x2

    .line 91
    if-eq v4, v9, :cond_6f

    .line 92
    .line 93
    const/4 v10, 0x3

    .line 94
    if-eq v4, v10, :cond_6c

    .line 95
    .line 96
    if-eq v4, v5, :cond_69

    .line 97
    .line 98
    const/4 v10, 0x6

    .line 99
    if-eq v4, v10, :cond_66

    .line 100
    .line 101
    :goto_64
    move-object v14, v7

    .line 102
    goto :goto_72

    .line 103
    :cond_66
    sget-object v7, Lcom/google/android/gms/internal/measurement/ra;->b:Lcom/google/android/gms/internal/measurement/ra;

    .line 104
    .line 105
    goto :goto_64

    .line 106
    :cond_69
    sget-object v7, Lcom/google/android/gms/internal/measurement/ra;->e:Lcom/google/android/gms/internal/measurement/ra;

    .line 107
    .line 108
    goto :goto_64

    .line 109
    :cond_6c
    sget-object v7, Lcom/google/android/gms/internal/measurement/ra;->a:Lcom/google/android/gms/internal/measurement/ra;

    .line 110
    .line 111
    goto :goto_64

    .line 112
    :cond_6f
    sget-object v7, Lcom/google/android/gms/internal/measurement/ra;->d:Lcom/google/android/gms/internal/measurement/ra;

    .line 113
    .line 114
    goto :goto_64

    .line 115
    :goto_72
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/google/android/gms/internal/measurement/n;

    .line 120
    .line 121
    invoke-virtual {v8, v1, v3}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-ne v3, v9, :cond_99

    .line 134
    .line 135
    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 136
    .line 137
    move-object v13, v1

    .line 138
    check-cast v13, Lcom/google/android/gms/internal/measurement/ta;

    .line 139
    .line 140
    sget-object v16, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 141
    .line 142
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/sa;->c:Z

    .line 143
    .line 144
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/sa;->d:Z

    .line 145
    .line 146
    move/from16 v17, v1

    .line 147
    .line 148
    move/from16 v18, v2

    .line 149
    .line 150
    invoke-interface/range {v13 .. v18}, Lcom/google/android/gms/internal/measurement/ta;->zza(Lcom/google/android/gms/internal/measurement/ra;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 151
    .line 152
    .line 153
    return-object v12

    .line 154
    :cond_99
    new-instance v3, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    :goto_9e
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-ge v9, v4, :cond_bc

    .line 168
    .line 169
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Lcom/google/android/gms/internal/measurement/n;

    .line 174
    .line 175
    invoke-virtual {v8, v1, v4}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    add-int/lit8 v9, v9, 0x1

    .line 187
    .line 188
    goto :goto_9e

    .line 189
    :cond_bc
    iget-object v1, v6, Lcom/google/android/gms/internal/measurement/g6;->d:Ljava/lang/Object;

    .line 190
    .line 191
    move-object v13, v1

    .line 192
    check-cast v13, Lcom/google/android/gms/internal/measurement/ta;

    .line 193
    .line 194
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/sa;->c:Z

    .line 195
    .line 196
    iget-boolean v2, v0, Lcom/google/android/gms/internal/measurement/sa;->d:Z

    .line 197
    .line 198
    move/from16 v17, v1

    .line 199
    .line 200
    move/from16 v18, v2

    .line 201
    .line 202
    move-object/from16 v16, v3

    .line 203
    .line 204
    invoke-interface/range {v13 .. v18}, Lcom/google/android/gms/internal/measurement/ta;->zza(Lcom/google/android/gms/internal/measurement/ra;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 205
    .line 206
    .line 207
    return-object v12
.end method
