###### Class y2.c (y2.c)
.class public final synthetic Ly2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lx1/v;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly2/g;


# direct methods
.method public synthetic constructor <init>(Ly2/g;I)V
    .registers 3

    .line 1
    iput p2, p0, Ly2/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ly2/c;->b:Ly2/g;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lx1/c0;)V
    .registers 10

    .line 1
    iget v0, p0, Ly2/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ea

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly2/c;->b:Ly2/g;

    .line 7
    .line 8
    iget-object v1, v0, Ly2/g;->x0:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_11

    .line 15
    .line 16
    goto/16 :goto_89

    .line 17
    .line 18
    :cond_11
    iget-object v1, p1, Lx1/c0;->c:Lx1/o;

    .line 19
    .line 20
    if-eqz v1, :cond_56

    .line 21
    .line 22
    iget p1, v1, Lx1/o;->c:I

    .line 23
    .line 24
    const v2, 0x149636

    .line 25
    .line 26
    .line 27
    if-ne p1, v2, :cond_1d

    .line 28
    .line 29
    goto :goto_22

    .line 30
    :cond_1d
    const v2, 0x149634

    .line 31
    .line 32
    .line 33
    if-ne p1, v2, :cond_26

    .line 34
    .line 35
    :goto_22
    invoke-virtual {v0}, Ly2/g;->S()V

    .line 36
    .line 37
    .line 38
    goto :goto_89

    .line 39
    :cond_26
    const v2, 0x149620

    .line 40
    .line 41
    .line 42
    if-ne p1, v2, :cond_40

    .line 43
    .line 44
    iget-object p1, v0, Ly2/g;->A0:Ly2/e;

    .line 45
    .line 46
    if-eqz p1, :cond_34

    .line 47
    .line 48
    iget-object p1, p1, Ly2/e;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p1}, Lp2/b;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_34
    iget-object p1, v0, Ly2/g;->D0:Ly2/m;

    .line 54
    .line 55
    if-eqz p1, :cond_3c

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ly2/g;->U(Ly2/m;)V

    .line 58
    .line 59
    .line 60
    goto :goto_89

    .line 61
    :cond_3c
    invoke-virtual {v0}, Ly2/g;->O()V

    .line 62
    .line 63
    .line 64
    goto :goto_89

    .line 65
    :cond_40
    const v2, 0x149635

    .line 66
    .line 67
    .line 68
    if-ne p1, v2, :cond_49

    .line 69
    .line 70
    invoke-virtual {v0}, Ly2/g;->O()V

    .line 71
    .line 72
    .line 73
    goto :goto_89

    .line 74
    :cond_49
    iget-object p1, v1, Lx1/o;->i:Lx1/l;

    .line 75
    .line 76
    if-nez p1, :cond_52

    .line 77
    .line 78
    new-instance p1, Lx1/l;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 81
    .line 82
    .line 83
    :cond_52
    invoke-virtual {v0, p1}, Ly2/g;->P(Lx1/l;)V

    .line 84
    .line 85
    .line 86
    goto :goto_89

    .line 87
    :cond_56
    :try_start_56
    iget-object p1, p1, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 88
    .line 89
    if-nez p1, :cond_62

    .line 90
    .line 91
    new-instance p1, Lorg/json/JSONObject;

    .line 92
    .line 93
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .line 95
    .line 96
    goto :goto_62

    .line 97
    :catch_60
    move-exception p1

    .line 98
    goto :goto_81

    .line 99
    :cond_62
    :goto_62
    const-string v1, "access_token"

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "resultObject.getString(\"access_token\")"

    .line 106
    .line 107
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "expires_in"

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v2

    .line 116
    const-string v4, "data_access_expiration_time"

    .line 117
    .line 118
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0, v1, v2, v3, p1}, Ly2/g;->Q(Ljava/lang/String;JLjava/lang/Long;)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_80} :catch_60

    .line 127
    .line 128
    .line 129
    goto :goto_89

    .line 130
    :goto_81
    new-instance v1, Lx1/l;

    .line 131
    .line 132
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ly2/g;->P(Lx1/l;)V

    .line 136
    .line 137
    .line 138
    :goto_89
    return-void

    .line 139
    :pswitch_8a
    iget-object v0, p0, Ly2/c;->b:Ly2/g;

    .line 140
    .line 141
    iget-boolean v1, v0, Ly2/g;->B0:Z

    .line 142
    .line 143
    if-eqz v1, :cond_91

    .line 144
    .line 145
    goto :goto_e9

    .line 146
    :cond_91
    iget-object v1, p1, Lx1/c0;->c:Lx1/o;

    .line 147
    .line 148
    if-eqz v1, :cond_a2

    .line 149
    .line 150
    iget-object p1, v1, Lx1/o;->i:Lx1/l;

    .line 151
    .line 152
    if-nez p1, :cond_9e

    .line 153
    .line 154
    new-instance p1, Lx1/l;

    .line 155
    .line 156
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 157
    .line 158
    .line 159
    :cond_9e
    invoke-virtual {v0, p1}, Ly2/g;->P(Lx1/l;)V

    .line 160
    .line 161
    .line 162
    goto :goto_e9

    .line 163
    :cond_a2
    iget-object p1, p1, Lx1/c0;->b:Lorg/json/JSONObject;

    .line 164
    .line 165
    if-nez p1, :cond_ab

    .line 166
    .line 167
    new-instance p1, Lorg/json/JSONObject;

    .line 168
    .line 169
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .line 171
    .line 172
    :cond_ab
    new-instance v1, Ly2/e;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    :try_start_b0
    const-string v2, "user_code"

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput-object v2, v1, Ly2/e;->b:Ljava/lang/String;

    .line 184
    .line 185
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 186
    .line 187
    const-string v4, "https://facebook.com/device?user_code=%1$s&qr=1"

    .line 188
    .line 189
    const/4 v5, 0x1

    .line 190
    new-array v6, v5, [Ljava/lang/Object;

    .line 191
    .line 192
    const/4 v7, 0x0

    .line 193
    aput-object v2, v6, v7

    .line 194
    .line 195
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    iput-object v2, v1, Ly2/e;->a:Ljava/lang/String;

    .line 204
    .line 205
    const-string v2, "code"

    .line 206
    .line 207
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    iput-object v2, v1, Ly2/e;->c:Ljava/lang/String;

    .line 212
    .line 213
    const-string v2, "interval"

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v2

    .line 219
    iput-wide v2, v1, Ly2/e;->d:J
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_dc} :catch_e0

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ly2/g;->T(Ly2/e;)V

    .line 222
    .line 223
    .line 224
    goto :goto_e9

    .line 225
    :catch_e0
    move-exception p1

    .line 226
    new-instance v1, Lx1/l;

    .line 227
    .line 228
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ly2/g;->P(Lx1/l;)V

    .line 232
    .line 233
    .line 234
    :goto_e9
    return-void

    .line 235
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_8a
    .end packed-switch
.end method
