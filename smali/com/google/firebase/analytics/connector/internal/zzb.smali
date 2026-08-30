###### Class com.google.firebase.analytics.connector.internal.zzb (com.google.firebase.analytics.connector.internal.zzb)
.class public final Lcom/google/firebase/analytics/connector/internal/zzb;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final zza:Lr4/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/g;"
        }
    .end annotation
.end field

.field private static final zzb:Lr4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/e;"
        }
    .end annotation
.end field

.field private static final zzc:Lr4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/e;"
        }
    .end annotation
.end field

.field private static final zzd:Lr4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/e;"
        }
    .end annotation
.end field

.field private static final zze:Lr4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/e;"
        }
    .end annotation
.end field

.field private static final zzf:Lr4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/e;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 1
    const-string v7, "_exp_timeout"

    .line 2
    .line 3
    const-string v8, "_exp_expire"

    .line 4
    .line 5
    const-string v0, "_ac"

    .line 6
    .line 7
    const-string v1, "campaign_details"

    .line 8
    .line 9
    const-string v2, "_ug"

    .line 10
    .line 11
    const-string v3, "_iapx"

    .line 12
    .line 13
    const-string v4, "_exp_set"

    .line 14
    .line 15
    const-string v5, "_exp_clear"

    .line 16
    .line 17
    const-string v6, "_exp_activate"

    .line 18
    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget v1, Lr4/g;->c:I

    .line 24
    .line 25
    const/16 v1, 0xf

    .line 26
    .line 27
    new-array v2, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const-string v4, "_in"

    .line 31
    .line 32
    aput-object v4, v2, v3

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    const-string v5, "_xa"

    .line 36
    .line 37
    aput-object v5, v2, v4

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    const-string v6, "_xu"

    .line 41
    .line 42
    aput-object v6, v2, v5

    .line 43
    .line 44
    const/4 v6, 0x3

    .line 45
    const-string v7, "_aq"

    .line 46
    .line 47
    aput-object v7, v2, v6

    .line 48
    .line 49
    const/4 v7, 0x4

    .line 50
    const-string v8, "_aa"

    .line 51
    .line 52
    aput-object v8, v2, v7

    .line 53
    .line 54
    const/4 v8, 0x5

    .line 55
    const-string v9, "_ai"

    .line 56
    .line 57
    aput-object v9, v2, v8

    .line 58
    .line 59
    const/4 v9, 0x6

    .line 60
    const/16 v10, 0x9

    .line 61
    .line 62
    invoke-static {v0, v3, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2}, Lr4/g;->f(I[Ljava/lang/Object;)Lr4/g;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zza:Lr4/g;

    .line 70
    .line 71
    sget-object v0, Lr4/e;->b:Lr4/b;

    .line 72
    .line 73
    const/4 v0, 0x7

    .line 74
    new-array v1, v0, [Ljava/lang/Object;

    .line 75
    .line 76
    const-string v2, "_e"

    .line 77
    .line 78
    aput-object v2, v1, v3

    .line 79
    .line 80
    const-string v2, "_f"

    .line 81
    .line 82
    aput-object v2, v1, v4

    .line 83
    .line 84
    const-string v2, "_iap"

    .line 85
    .line 86
    aput-object v2, v1, v5

    .line 87
    .line 88
    const-string v2, "_s"

    .line 89
    .line 90
    aput-object v2, v1, v6

    .line 91
    .line 92
    const-string v2, "_au"

    .line 93
    .line 94
    aput-object v2, v1, v7

    .line 95
    .line 96
    const-string v2, "_ui"

    .line 97
    .line 98
    aput-object v2, v1, v8

    .line 99
    .line 100
    const-string v2, "_cd"

    .line 101
    .line 102
    aput-object v2, v1, v9

    .line 103
    .line 104
    invoke-static {v0, v1}, Lh8/b;->c(I[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v1}, Lr4/e;->e(I[Ljava/lang/Object;)Lr4/i;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb:Lr4/e;

    .line 112
    .line 113
    new-array v0, v6, [Ljava/lang/Object;

    .line 114
    .line 115
    const-string v1, "auto"

    .line 116
    .line 117
    aput-object v1, v0, v3

    .line 118
    .line 119
    const-string v1, "app"

    .line 120
    .line 121
    aput-object v1, v0, v4

    .line 122
    .line 123
    const-string v1, "am"

    .line 124
    .line 125
    aput-object v1, v0, v5

    .line 126
    .line 127
    invoke-static {v6, v0}, Lh8/b;->c(I[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v6, v0}, Lr4/e;->e(I[Ljava/lang/Object;)Lr4/i;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzc:Lr4/e;

    .line 135
    .line 136
    new-array v0, v5, [Ljava/lang/Object;

    .line 137
    .line 138
    const-string v1, "_r"

    .line 139
    .line 140
    aput-object v1, v0, v3

    .line 141
    .line 142
    const-string v1, "_dbg"

    .line 143
    .line 144
    aput-object v1, v0, v4

    .line 145
    .line 146
    invoke-static {v5, v0}, Lh8/b;->c(I[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v5, v0}, Lr4/e;->e(I[Ljava/lang/Object;)Lr4/i;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzd:Lr4/e;

    .line 154
    .line 155
    new-instance v0, Li8/i;

    .line 156
    .line 157
    invoke-direct {v0}, Li8/i;-><init>()V

    .line 158
    .line 159
    .line 160
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjj;->zza:[Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Li8/i;->d([Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjj;->zzb:[Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Li8/i;->d([Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    iput-boolean v4, v0, Li8/i;->b:Z

    .line 171
    .line 172
    iget-object v1, v0, Li8/i;->d:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v1, [Ljava/lang/Object;

    .line 175
    .line 176
    iget v0, v0, Li8/i;->c:I

    .line 177
    .line 178
    invoke-static {v0, v1}, Lr4/e;->e(I[Ljava/lang/Object;)Lr4/i;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zze:Lr4/e;

    .line 183
    .line 184
    new-array v0, v5, [Ljava/lang/Object;

    .line 185
    .line 186
    const-string v1, "^_ltv_[A-Z]{3}$"

    .line 187
    .line 188
    aput-object v1, v0, v3

    .line 189
    .line 190
    const-string v1, "^_cc[1-5]{1}$"

    .line 191
    .line 192
    aput-object v1, v0, v4

    .line 193
    .line 194
    invoke-static {v5, v0}, Lh8/b;->c(I[Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v5, v0}, Lr4/e;->e(I[Ljava/lang/Object;)Lr4/i;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf:Lr4/e;

    .line 202
    .line 203
    return-void
.end method

.method public static zza(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 3
    const-string v2, "origin"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_e
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 5
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_17
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1e

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 8
    :cond_1e
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 9
    const-string v2, "trigger_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_27
    const-string v1, "trigger_timeout"

    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 11
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 12
    const-string v2, "timed_out_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_37
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_40

    .line 14
    const-string v2, "timed_out_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    :cond_40
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    if-eqz v1, :cond_49

    .line 16
    const-string v2, "triggered_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_49
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_52

    .line 18
    const-string v2, "triggered_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    :cond_52
    const-string v1, "time_to_live"

    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 20
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 21
    const-string v2, "expired_event_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_62
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    if-eqz v1, :cond_6b

    .line 23
    const-string v2, "expired_event_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    :cond_6b
    const-string v1, "creation_timestamp"

    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 25
    const-string v1, "active"

    iget-boolean v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->active:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    const-string v1, "triggered_timestamp"

    iget-wide v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static zza(Landroid/os/Bundle;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;
    .registers 10

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;-><init>()V

    .line 29
    const-string v1, "origin"

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    .line 31
    const-string v1, "name"

    .line 32
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/common/internal/d0;->h(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    .line 34
    const-string v1, "value"

    const-class v4, Ljava/lang/Object;

    .line 35
    invoke-static {p0, v1, v4, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    .line 36
    const-string v1, "trigger_event_name"

    .line 37
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerEventName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 39
    const-string v4, "trigger_timeout"

    const-class v5, Ljava/lang/Long;

    invoke-static {p0, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggerTimeout:J

    .line 40
    const-string v4, "timed_out_event_name"

    .line 41
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    .line 42
    const-string v4, "timed_out_event_params"

    const-class v6, Landroid/os/Bundle;

    invoke-static {p0, v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iput-object v4, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    .line 43
    const-string v4, "triggered_event_name"

    .line 44
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    .line 45
    const-string v4, "triggered_event_params"

    .line 46
    invoke-static {p0, v4, v6, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    iput-object v4, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    .line 47
    const-string v4, "time_to_live"

    .line 48
    invoke-static {p0, v4, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timeToLive:J

    .line 49
    const-string v4, "expired_event_name"

    .line 50
    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    .line 51
    const-string v2, "expired_event_params"

    .line 52
    invoke-static {p0, v2, v6, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iput-object v2, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    .line 53
    const-class v2, Ljava/lang/Boolean;

    .line 54
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    const-string v4, "active"

    invoke-static {p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->active:Z

    .line 56
    const-string v2, "creation_timestamp"

    .line 57
    invoke-static {p0, v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->creationTimestamp:J

    .line 58
    const-string v2, "triggered_timestamp"

    .line 59
    invoke-static {p0, v2, v5, v1}, Lcom/google/android/gms/measurement/internal/zzjf;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredTimestamp:J

    return-object v0
.end method

.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 60
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzji;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 61
    const-string v0, "clx"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 62
    const-string p0, "_ae"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 63
    const-string p0, "_r"

    const-wide/16 v0, 0x1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_17
    return-void
.end method

.method public static zza(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 6

    .line 64
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb:Lr4/e;

    invoke-virtual {v0, p0}, Lr4/e;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    if-eqz p1, :cond_24

    .line 65
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzd:Lr4/e;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    move v2, v0

    :cond_13
    if-ge v2, v1, :cond_24

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 66
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    return v0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 67
    const-string v0, "_ce1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "fcm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_50

    const-string v0, "_ce2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_50

    .line 68
    :cond_15
    const-string v0, "_ln"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    return v3

    :cond_2d
    :goto_2d
    return v2

    .line 70
    :cond_2e
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzb;->zze:Lr4/e;

    invoke-virtual {p0, p1}, Lr4/e;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    return v3

    .line 71
    :cond_37
    sget-object p0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf:Lr4/e;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    move v1, v3

    :cond_3e
    if-ge v1, v0, :cond_4f

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    return v3

    :cond_4f
    return v2

    .line 73
    :cond_50
    :goto_50
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    const-string p1, "frc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    return v3

    :cond_60
    :goto_60
    return v2
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzji;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static zzb(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 11
    :cond_4
    iget-object v1, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->origin:Ljava/lang/String;

    if-eqz v1, :cond_74

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_74

    .line 13
    :cond_f
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1a

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzlh;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1a

    return v0

    .line 14
    :cond_1a
    invoke-static {v1}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    return v0

    .line 15
    :cond_21
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    return v0

    .line 16
    :cond_2a
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    if-eqz v2, :cond_42

    .line 17
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_37

    return v0

    .line 18
    :cond_37
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->expiredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_42

    return v0

    .line 19
    :cond_42
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    if-eqz v2, :cond_5a

    .line 20
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_4f

    return v0

    .line 21
    :cond_4f
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->triggeredEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_5a

    return v0

    .line 22
    :cond_5a
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    if-eqz v2, :cond_72

    .line 23
    iget-object v3, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/google/firebase/analytics/connector/internal/zzb;->zza(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_67

    return v0

    .line 24
    :cond_67
    iget-object v2, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventName:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->timedOutEventParams:Landroid/os/Bundle;

    invoke-static {v1, v2, p0}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-nez p0, :cond_72

    return v0

    :cond_72
    const/4 p0, 0x1

    return p0

    :cond_74
    :goto_74
    return v0
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8

    .line 2
    const-string v0, "_cmp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_a

    return v0

    .line 3
    :cond_a
    invoke-static {p0}, Lcom/google/firebase/analytics/connector/internal/zzb;->zzf(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_12

    return v1

    :cond_12
    if-nez p2, :cond_15

    return v1

    .line 4
    :cond_15
    sget-object p1, Lcom/google/firebase/analytics/connector/internal/zzb;->zzd:Lr4/e;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    move v3, v1

    :cond_1c
    if-ge v3, v2, :cond_2d

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    return v1

    .line 6
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v2, -0x1

    sparse-switch p1, :sswitch_data_72

    goto :goto_59

    :sswitch_39
    const-string p1, "fiam"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_59

    :cond_42
    const/4 v2, 0x2

    goto :goto_59

    :sswitch_44
    const-string p1, "fdl"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto :goto_59

    :cond_4d
    move v2, v0

    goto :goto_59

    :sswitch_4f
    const-string p1, "fcm"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto :goto_59

    :cond_58
    move v2, v1

    .line 7
    :goto_59
    const-string p0, "_cis"

    packed-switch v2, :pswitch_data_80

    return v1

    .line 8
    :pswitch_5f
    const-string p1, "fiam_integration"

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 9
    :pswitch_65
    const-string p1, "fdl_integration"

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 10
    :pswitch_6b
    const-string p1, "fcm_integration"

    invoke-virtual {p2, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :sswitch_data_72
    .sparse-switch
        0x18b50 -> :sswitch_4f
        0x18b6e -> :sswitch_44
        0x2ff42f -> :sswitch_39
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
    .end packed-switch
.end method

.method public static zzc(Ljava/lang/String;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/16 v3, 0x5f

    .line 21
    .line 22
    if-nez v2, :cond_1a

    .line 23
    .line 24
    if-eq v1, v3, :cond_1a

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    :goto_22
    if-ge v1, v2, :cond_37

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eq v4, v3, :cond_31

    .line 42
    .line 43
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-nez v5, :cond_31

    .line 48
    .line 49
    return v0

    .line 50
    :cond_31
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    add-int/2addr v1, v4

    .line 55
    goto :goto_22

    .line 56
    :cond_37
    const/4 p0, 0x1

    .line 57
    return p0
.end method

.method public static zzd(Ljava/lang/String;)Z
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_b

    .line 10
    .line 11
    return v0

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_16

    .line 21
    .line 22
    return v0

    .line 23
    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    :goto_1e
    if-ge v1, v2, :cond_35

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0x5f

    .line 38
    .line 39
    if-eq v3, v4, :cond_2f

    .line 40
    .line 41
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2f

    .line 46
    .line 47
    return v0

    .line 48
    :cond_2f
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    add-int/2addr v1, v3

    .line 53
    goto :goto_1e

    .line 54
    :cond_35
    const/4 p0, 0x1

    .line 55
    return p0
.end method

.method public static zze(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zza:Lr4/g;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lr4/a;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public static zzf(Ljava/lang/String;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/analytics/connector/internal/zzb;->zzc:Lr4/e;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lr4/e;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_a

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_a
    const/4 p0, 0x0

    .line 12
    return p0
.end method
