###### Class androidx.profileinstaller.ProfileInstallReceiver (androidx.profileinstaller.ProfileInstallReceiver)
.class public Landroidx/profileinstaller/ProfileInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1
    if-nez p2, :cond_4

    .line 2
    .line 3
    goto/16 :goto_fd

    .line 4
    .line 5
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "androidx.profileinstaller.action.INSTALL_PROFILE"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_20

    .line 16
    .line 17
    new-instance p2, Lc1/c;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lk1/h;

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    invoke-direct {v0, v1, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {p1, p2, v0, v1}, Ld1/d;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;Ld1/c;Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_20
    const-string v1, "androidx.profileinstaller.action.SKIP_FILE"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/16 v2, 0xa

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v1, :cond_8c

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-eqz p2, :cond_fd

    .line 49
    .line 50
    const-string v0, "EXTRA_SKIP_FILE_OPERATION"

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v0, "WRITE_SKIP_FILE"

    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_69

    .line 63
    .line 64
    new-instance p2, Lk1/h;

    .line 65
    .line 66
    const/4 v0, 0x5

    .line 67
    invoke-direct {p2, v0, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v4, 0x0

    .line 83
    :try_start_52
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_56} :catch_62

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v0, p1}, Ld1/d;->e(Landroid/content/pm/PackageInfo;Ljava/io/File;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v2, v3}, Lk1/h;->i(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_fd

    .line 98
    .line 99
    :catch_62
    move-exception p1

    .line 100
    const/4 v0, 0x7

    .line 101
    invoke-virtual {p2, v0, p1}, Lk1/h;->i(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_fd

    .line 105
    .line 106
    :cond_69
    const-string v0, "DELETE_SKIP_FILE"

    .line 107
    .line 108
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_fd

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    new-instance p2, Ljava/io/File;

    .line 119
    .line 120
    const-string v0, "profileinstaller_profileWrittenFor_lastUpdateTime.dat"

    .line 121
    .line 122
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 126
    .line 127
    .line 128
    const-string p1, "ProfileInstaller"

    .line 129
    .line 130
    const-string p2, "RESULT_DELETE_SKIP_FILE_SUCCESS"

    .line 131
    .line 132
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    const/16 p1, 0xb

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_8c
    const-string v1, "androidx.profileinstaller.action.SAVE_PROFILE"

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    const/16 v4, 0x18

    .line 148
    .line 149
    if-eqz v1, :cond_b3

    .line 150
    .line 151
    new-instance p1, Lk1/h;

    .line 152
    .line 153
    const/4 p2, 0x5

    .line 154
    invoke-direct {p1, p2, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 158
    .line 159
    if-lt p2, v4, :cond_ad

    .line 160
    .line 161
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    invoke-static {p2, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 166
    .line 167
    .line 168
    const/16 p2, 0xc

    .line 169
    .line 170
    invoke-virtual {p1, p2, v3}, Lk1/h;->i(ILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_ad
    const/16 p2, 0xd

    .line 175
    .line 176
    invoke-virtual {p1, p2, v3}, Lk1/h;->i(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_b3
    const-string v1, "androidx.profileinstaller.action.BENCHMARK_OPERATION"

    .line 181
    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_fd

    .line 187
    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    if-eqz p2, :cond_fd

    .line 193
    .line 194
    const-string v0, "EXTRA_BENCHMARK_OPERATION"

    .line 195
    .line 196
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    new-instance v0, Lk1/h;

    .line 201
    .line 202
    const/4 v1, 0x5

    .line 203
    invoke-direct {v0, v1, p0}, Lk1/h;-><init>(ILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    const-string v1, "DROP_SHADER_CACHE"

    .line 207
    .line 208
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_f8

    .line 213
    .line 214
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 215
    .line 216
    if-lt p2, v4, :cond_e2

    .line 217
    .line 218
    invoke-static {p1}, Lcom/getcapacitor/a;->b(Landroid/content/Context;)Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    goto :goto_e6

    .line 227
    :cond_e2
    invoke-virtual {p1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    :goto_e6
    invoke-static {p1}, Ld1/d;->c(Ljava/io/File;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-eqz p1, :cond_f2

    .line 236
    .line 237
    const/16 p1, 0xe

    .line 238
    .line 239
    invoke-virtual {v0, p1, v3}, Lk1/h;->i(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_f2
    const/16 p1, 0xf

    .line 244
    .line 245
    invoke-virtual {v0, p1, v3}, Lk1/h;->i(ILjava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_f8
    const/16 p1, 0x10

    .line 250
    .line 251
    invoke-virtual {v0, p1, v3}, Lk1/h;->i(ILjava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :cond_fd
    :goto_fd
    return-void
.end method
