###### Class b.m (b.m)
.class public final synthetic Lb/m;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iput p2, p0, Lb/m;->a:I

    .line 2
    .line 3
    iput-object p3, p0, Lb/m;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lb/m;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lb/m;->d:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    iget v0, p0, Lb/m;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_c2

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb/m;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lb/m;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, LeventTrack/jpush/EngagelabInitManager$TokenCallback;

    .line 13
    .line 14
    iget v2, p0, Lb/m;->c:I

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, LeventTrack/jpush/EngagelabInitManager;->a(Landroid/content/Context;ILeventTrack/jpush/EngagelabInitManager$TokenCallback;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_13
    iget-object v0, p0, Lb/m;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ld7/k;

    .line 23
    .line 24
    iget v1, p0, Lb/m;->c:I

    .line 25
    .line 26
    iget-object v2, p0, Lb/m;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroid/content/Context;

    .line 29
    .line 30
    const-class v3, Li2/g;

    .line 31
    .line 32
    invoke-static {v3}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_26

    .line 37
    .line 38
    goto :goto_3f

    .line 39
    :cond_26
    :try_start_26
    const-string v4, "$billingClientVersion"

    .line 40
    .line 41
    invoke-static {v1, v4}, La1/a;->n(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Ld7/k;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Li2/h;

    .line 47
    .line 48
    sget-object v4, Li2/s;->c:Li2/s;

    .line 49
    .line 50
    new-instance v5, Li2/f;

    .line 51
    .line 52
    const/4 v6, 0x1

    .line 53
    invoke-direct {v5, v1, v2, v6}, Li2/f;-><init>(ILandroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v4, v5}, Li2/h;->a(Li2/s;Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_3b

    .line 57
    .line 58
    .line 59
    goto :goto_3f

    .line 60
    :catchall_3b
    move-exception v0

    .line 61
    invoke-static {v0, v3}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :goto_3f
    return-void

    .line 65
    :pswitch_40
    iget-object v0, p0, Lb/m;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Ld1/a;

    .line 68
    .line 69
    iget-object v1, p0, Lb/m;->d:Ljava/lang/Object;

    .line 70
    .line 71
    iget-object v0, v0, Ld1/a;->b:Ld1/c;

    .line 72
    .line 73
    iget v2, p0, Lb/m;->c:I

    .line 74
    .line 75
    invoke-interface {v0, v2, v1}, Ld1/c;->i(ILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_4e
    iget-object v0, p0, Lb/m;->b:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lb/n;

    .line 82
    .line 83
    iget-object v1, p0, Lb/m;->d:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    .line 86
    .line 87
    const-string v2, "this$0"

    .line 88
    .line 89
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const-string v2, "$e"

    .line 93
    .line 94
    invoke-static {v2, v1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    new-instance v2, Landroid/content/Intent;

    .line 98
    .line 99
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 109
    .line 110
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget v2, p0, Lb/m;->c:I

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    invoke-virtual {v0, v2, v3, v1}, Ld/h;->a(IILandroid/content/Intent;)Z

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_78
    iget-object v0, p0, Lb/m;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Lb/n;

    .line 124
    .line 125
    iget-object v1, p0, Lb/m;->d:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Lk1/h;

    .line 128
    .line 129
    iget-object v1, v1, Lk1/h;->b:Ljava/lang/Object;

    .line 130
    .line 131
    iget-object v2, v0, Ld/h;->a:Ljava/util/LinkedHashMap;

    .line 132
    .line 133
    iget v3, p0, Lb/m;->c:I

    .line 134
    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/lang/String;

    .line 144
    .line 145
    if-nez v2, :cond_93

    .line 146
    .line 147
    goto :goto_c0

    .line 148
    :cond_93
    iget-object v3, v0, Ld/h;->e:Ljava/util/LinkedHashMap;

    .line 149
    .line 150
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ld/e;

    .line 155
    .line 156
    if-eqz v3, :cond_a0

    .line 157
    .line 158
    iget-object v4, v3, Ld/e;->a:Ld/b;

    .line 159
    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    const/4 v4, 0x0

    .line 162
    :goto_a1
    if-nez v4, :cond_ae

    .line 163
    .line 164
    iget-object v3, v0, Ld/h;->g:Landroid/os/Bundle;

    .line 165
    .line 166
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v0, Ld/h;->f:Ljava/util/LinkedHashMap;

    .line 170
    .line 171
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    goto :goto_c0

    .line 175
    :cond_ae
    iget-object v3, v3, Ld/e;->a:Ld/b;

    .line 176
    .line 177
    const-string v4, "null cannot be cast to non-null type androidx.activity.result.ActivityResultCallback<O of androidx.activity.result.ActivityResultRegistry.dispatchResult>"

    .line 178
    .line 179
    invoke-static {v4, v3}, Ld7/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, v0, Ld/h;->d:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_c0

    .line 189
    .line 190
    invoke-interface {v3, v1}, Ld/b;->e(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_c0
    :goto_c0
    return-void

    .line 194
    nop

    .line 195
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_78
        :pswitch_4e
        :pswitch_40
        :pswitch_13
    .end packed-switch
.end method
