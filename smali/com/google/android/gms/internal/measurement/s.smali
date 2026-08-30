###### Class com.google.android.gms.internal.measurement.s (com.google.android.gms.internal.measurement.s)
.class public final Lcom/google/android/gms/internal/measurement/s;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/s;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/measurement/a0;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;
    .registers 7

    .line 1
    if-eqz p1, :cond_5e

    .line 2
    .line 3
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_5e

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/measurement/a0;->a:I

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_62

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/a0;->b:Lcom/google/firebase/messaging/y;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a0;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 25
    .line 26
    .line 27
    goto :goto_3b

    .line 28
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/a0;->b:Lcom/google/firebase/messaging/y;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a0;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3b

    .line 40
    :pswitch_27
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/a0;->b:Lcom/google/firebase/messaging/y;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a0;->c:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/messaging/y;->K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v1, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/util/HashMap;

    .line 54
    .line 55
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :goto_3b
    move-object v0, p2

    .line 61
    check-cast v0, Lcom/google/android/gms/internal/measurement/e;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/y;->F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/h;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    check-cast v0, Lcom/google/android/gms/internal/measurement/h;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/h;->b:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "break"

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_55

    .line 82
    .line 83
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_55
    const-string v2, "return"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_2

    .line 93
    .line 94
    return-object v0

    .line 95
    :cond_5e
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 96
    .line 97
    return-object p0

    .line 98
    nop

    .line 99
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_27
        :pswitch_1b
    .end packed-switch
.end method

.method public static b(Lcom/google/firebase/messaging/y;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/o;
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/f0;->G:Lcom/google/android/gms/internal/measurement/f0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/p4;->o(Lcom/google/android/gms/internal/measurement/f0;ILjava/util/List;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 17
    .line 18
    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 32
    .line 33
    invoke-virtual {v3, p0, v2}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/e;

    .line 38
    .line 39
    if-eqz v3, :cond_4b

    .line 40
    .line 41
    check-cast v2, Lcom/google/android/gms/internal/measurement/e;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/e;->m()Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-le v4, v1, :cond_41

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_41
    new-instance p1, Lcom/google/android/gms/internal/measurement/o;

    .line 67
    .line 68
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p1, v0, v2, v3, p0}, Lcom/google/android/gms/internal/measurement/o;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;Lcom/google/firebase/messaging/y;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string v0, "FN requires an ArrayValue of parameter names found "

    .line 87
    .line 88
    invoke-static {v0, p1}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
.end method

.method public static d(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z
    .registers 7

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_77

    .line 16
    .line 17
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/t;

    .line 18
    .line 19
    if-nez v0, :cond_76

    .line 20
    .line 21
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/l;

    .line 22
    .line 23
    if-eqz v0, :cond_19

    .line 24
    .line 25
    goto :goto_76

    .line 26
    :cond_19
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/g;

    .line 27
    .line 28
    if-eqz v0, :cond_50

    .line 29
    .line 30
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_4f

    .line 43
    .line 44
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3a

    .line 57
    .line 58
    goto :goto_4f

    .line 59
    :cond_3a
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 72
    .line 73
    .line 74
    move-result-wide p0

    .line 75
    cmpl-double p0, v3, p0

    .line 76
    .line 77
    if-nez p0, :cond_4f

    .line 78
    .line 79
    return v2

    .line 80
    :cond_4f
    :goto_4f
    return v1

    .line 81
    :cond_50
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/p;

    .line 82
    .line 83
    if-eqz v0, :cond_61

    .line 84
    .line 85
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    return p0

    .line 98
    :cond_61
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/f;

    .line 99
    .line 100
    if-eqz v0, :cond_72

    .line 101
    .line 102
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzd()Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    return p0

    .line 115
    :cond_72
    if-ne p0, p1, :cond_75

    .line 116
    .line 117
    return v2

    .line 118
    :cond_75
    return v1

    .line 119
    :cond_76
    :goto_76
    return v2

    .line 120
    :cond_77
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/t;

    .line 121
    .line 122
    if-nez v0, :cond_7f

    .line 123
    .line 124
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/l;

    .line 125
    .line 126
    if-eqz v0, :cond_89

    .line 127
    .line 128
    :cond_7f
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/t;

    .line 129
    .line 130
    if-nez v0, :cond_f6

    .line 131
    .line 132
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l;

    .line 133
    .line 134
    if-eqz v0, :cond_89

    .line 135
    .line 136
    goto/16 :goto_f6

    .line 137
    .line 138
    :cond_89
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/g;

    .line 139
    .line 140
    if-eqz v0, :cond_9d

    .line 141
    .line 142
    instance-of v2, p1, Lcom/google/android/gms/internal/measurement/p;

    .line 143
    .line 144
    if-eqz v2, :cond_9d

    .line 145
    .line 146
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 147
    .line 148
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 153
    .line 154
    .line 155
    :goto_9a
    move-object p1, v0

    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_9d
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/p;

    .line 159
    .line 160
    if-eqz v2, :cond_b1

    .line 161
    .line 162
    instance-of v3, p1, Lcom/google/android/gms/internal/measurement/g;

    .line 163
    .line 164
    if-eqz v3, :cond_b1

    .line 165
    .line 166
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 167
    .line 168
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 173
    .line 174
    .line 175
    :goto_ae
    move-object p0, v0

    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_b1
    instance-of v3, p0, Lcom/google/android/gms/internal/measurement/f;

    .line 179
    .line 180
    if-eqz v3, :cond_bf

    .line 181
    .line 182
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 183
    .line 184
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 189
    .line 190
    .line 191
    goto :goto_ae

    .line 192
    :cond_bf
    instance-of v3, p1, Lcom/google/android/gms/internal/measurement/f;

    .line 193
    .line 194
    if-eqz v3, :cond_cd

    .line 195
    .line 196
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 197
    .line 198
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 203
    .line 204
    .line 205
    goto :goto_9a

    .line 206
    :cond_cd
    if-nez v2, :cond_d1

    .line 207
    .line 208
    if-eqz v0, :cond_df

    .line 209
    .line 210
    :cond_d1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/i;

    .line 211
    .line 212
    if-eqz v0, :cond_df

    .line 213
    .line 214
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 215
    .line 216
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_9a

    .line 224
    :cond_df
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/i;

    .line 225
    .line 226
    if-eqz v0, :cond_f5

    .line 227
    .line 228
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/p;

    .line 229
    .line 230
    if-nez v0, :cond_eb

    .line 231
    .line 232
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/g;

    .line 233
    .line 234
    if-eqz v0, :cond_f5

    .line 235
    .line 236
    :cond_eb
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 237
    .line 238
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_ae

    .line 246
    :cond_f5
    return v1

    .line 247
    :cond_f6
    :goto_f6
    return v2
.end method

.method public static e(Lcom/google/android/gms/internal/measurement/a0;Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;
    .registers 4

    .line 1
    instance-of v0, p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    if-eqz v0, :cond_f

    .line 4
    .line 5
    check-cast p1, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/s;->a(Lcom/google/android/gms/internal/measurement/a0;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p1, "Non-iterable type in for...of loop."

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0
.end method

.method public static f(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z
    .registers 11

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/i;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :cond_e
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/i;

    .line 16
    .line 17
    if-eqz v0, :cond_1c

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :cond_1c
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/p;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    const/4 v2, 0x0

    .line 33
    if-eqz v0, :cond_37

    .line 34
    .line 35
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/p;

    .line 36
    .line 37
    if-nez v0, :cond_27

    .line 38
    .line 39
    goto :goto_37

    .line 40
    :cond_27
    check-cast p0, Lcom/google/android/gms/internal/measurement/p;

    .line 41
    .line 42
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 43
    .line 44
    check-cast p1, Lcom/google/android/gms/internal/measurement/p;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-gez p0, :cond_36

    .line 53
    .line 54
    return v1

    .line 55
    :cond_36
    return v2

    .line 56
    :cond_37
    :goto_37
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 69
    .line 70
    .line 71
    move-result-wide p0

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_70

    .line 77
    .line 78
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_54

    .line 83
    .line 84
    goto :goto_70

    .line 85
    :cond_54
    const-wide/16 v5, 0x0

    .line 86
    .line 87
    cmpl-double v0, v3, v5

    .line 88
    .line 89
    const-wide/high16 v7, -0x8000000000000000L

    .line 90
    .line 91
    if-nez v0, :cond_60

    .line 92
    .line 93
    cmpl-double v0, p0, v7

    .line 94
    .line 95
    if-eqz v0, :cond_68

    .line 96
    .line 97
    :cond_60
    cmpl-double v0, v3, v7

    .line 98
    .line 99
    if-nez v0, :cond_69

    .line 100
    .line 101
    cmpl-double v0, p0, v5

    .line 102
    .line 103
    if-nez v0, :cond_69

    .line 104
    .line 105
    :cond_68
    return v2

    .line 106
    :cond_69
    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-gez p0, :cond_70

    .line 111
    .line 112
    return v1

    .line 113
    :cond_70
    :goto_70
    return v2
.end method

.method public static g(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z
    .registers 6

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/i;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :cond_e
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/i;

    .line 16
    .line 17
    if-eqz v0, :cond_1c

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->zzf()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    move-object p1, v0

    .line 29
    :cond_1c
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/p;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_25

    .line 33
    .line 34
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/p;

    .line 35
    .line 36
    if-nez v0, :cond_42

    .line 37
    .line 38
    :cond_25
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4a

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n;->c()Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_42

    .line 65
    .line 66
    goto :goto_4a

    .line 67
    :cond_42
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/s;->f(Lcom/google/android/gms/internal/measurement/n;Lcom/google/android/gms/internal/measurement/n;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-nez p0, :cond_4a

    .line 72
    .line 73
    const/4 p0, 0x1

    .line 74
    return p0

    .line 75
    :cond_4a
    :goto_4a
    return v1
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/p4;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_18

    .line 12
    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    const-string v1, "Command not implemented: "

    .line 16
    .line 17
    invoke-static {v1, p1}, Lq2/x;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Command not supported"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method
