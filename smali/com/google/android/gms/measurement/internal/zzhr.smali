###### Class com.google.android.gms.measurement.internal.zzhr (com.google.android.gms.measurement.internal.zzhr)
.class final Lcom/google/android/gms/measurement/internal/zzhr;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/ta;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzhl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/measurement/ra;Ljava/lang/String;Ljava/util/List;ZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/ra;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzht;->zza:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p1, v2, :cond_74

    .line 13
    .line 14
    if-eq p1, v1, :cond_4f

    .line 15
    .line 16
    if-eq p1, v0, :cond_2a

    .line 17
    .line 18
    const/4 p4, 0x4

    .line 19
    if-eq p1, p4, :cond_1f

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzo()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_7e

    .line 32
    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzp()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_7e

    .line 43
    :cond_2a
    if-eqz p4, :cond_37

    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzw()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_7e

    .line 56
    :cond_37
    if-nez p5, :cond_44

    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzv()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_7e

    .line 69
    :cond_44
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzu()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    goto :goto_7e

    .line 80
    :cond_4f
    if-eqz p4, :cond_5c

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzn()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    goto :goto_7e

    .line 93
    :cond_5c
    if-nez p5, :cond_69

    .line 94
    .line 95
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzm()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_7e

    .line 106
    :cond_69
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzg()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_7e

    .line 117
    :cond_74
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhr;->zza:Lcom/google/android/gms/measurement/internal/zzhl;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzhl;->zzj()Lcom/google/android/gms/measurement/internal/zzgo;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgo;->zzc()Lcom/google/android/gms/measurement/internal/zzgq;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    :goto_7e
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p4

    .line 131
    const/4 p5, 0x0

    .line 132
    if-eq p4, v2, :cond_a9

    .line 133
    .line 134
    if-eq p4, v1, :cond_9d

    .line 135
    .line 136
    if-eq p4, v0, :cond_8d

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_8d
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p4

    .line 146
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p5

    .line 150
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_9d
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p4

    .line 162
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_a9
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzgq;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    return-void
.end method
