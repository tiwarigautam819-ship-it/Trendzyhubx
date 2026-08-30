###### Class g0.a (g0.a)
.class public final synthetic Lg0/a;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lg0/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    .line 1
    iget v0, p0, Lg0/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_ae

    .line 4
    .line 5
    .line 6
    check-cast p1, Lw2/a;

    .line 7
    .line 8
    check-cast p2, Lw2/a;

    .line 9
    .line 10
    const-string v0, "o2"

    .line 11
    .line 12
    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lw2/a;->c:Ljava/lang/Long;

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    if-eqz p1, :cond_2d

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iget-object p1, p2, Lw2/a;->c:Ljava/lang/Long;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    if-eqz p1, :cond_2c

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    cmp-long p1, v3, v1

    .line 37
    .line 38
    if-gez p1, :cond_28

    .line 39
    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    if-nez p1, :cond_2c

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    move v0, p2

    .line 46
    :cond_2d
    :goto_2d
    return v0

    .line 47
    :pswitch_2e
    check-cast p1, Ls2/d;

    .line 48
    .line 49
    check-cast p2, Ls2/d;

    .line 50
    .line 51
    const-string v0, "o2"

    .line 52
    .line 53
    invoke-static {v0, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object p1, p1, Ls2/d;->g:Ljava/lang/Long;

    .line 60
    .line 61
    if-eqz p1, :cond_55

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    iget-object p1, p2, Ls2/d;->g:Ljava/lang/Long;

    .line 68
    .line 69
    if-eqz p1, :cond_53

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 72
    .line 73
    .line 74
    move-result-wide p1

    .line 75
    cmp-long p1, p1, v0

    .line 76
    .line 77
    if-gez p1, :cond_4f

    .line 78
    .line 79
    goto :goto_55

    .line 80
    :cond_4f
    if-nez p1, :cond_53

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    goto :goto_56

    .line 84
    :cond_53
    const/4 p1, 0x1

    .line 85
    goto :goto_56

    .line 86
    :cond_55
    :goto_55
    const/4 p1, -0x1

    .line 87
    :goto_56
    return p1

    .line 88
    :pswitch_57
    check-cast p1, Ls2/d;

    .line 89
    .line 90
    check-cast p2, Ls2/d;

    .line 91
    .line 92
    const-class v0, Lt2/c;

    .line 93
    .line 94
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/4 v2, 0x0

    .line 99
    if-eqz v1, :cond_65

    .line 100
    .line 101
    goto :goto_8d

    .line 102
    :cond_65
    :try_start_65
    const-string v1, "o2"

    .line 103
    .line 104
    invoke-static {v1, p2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Ls2/d;->g:Ljava/lang/Long;

    .line 111
    .line 112
    if-eqz p1, :cond_87

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    iget-object p1, p2, Ls2/d;->g:Ljava/lang/Long;

    .line 119
    .line 120
    if-eqz p1, :cond_85

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 123
    .line 124
    .line 125
    move-result-wide p1
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_89

    .line 126
    cmp-long p1, p1, v3

    .line 127
    .line 128
    if-gez p1, :cond_82

    .line 129
    .line 130
    goto :goto_87

    .line 131
    :cond_82
    if-nez p1, :cond_85

    .line 132
    .line 133
    goto :goto_8d

    .line 134
    :cond_85
    const/4 v2, 0x1

    .line 135
    goto :goto_8d

    .line 136
    :cond_87
    :goto_87
    const/4 v2, -0x1

    .line 137
    goto :goto_8d

    .line 138
    :catchall_89
    move-exception p1

    .line 139
    invoke-static {p1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :goto_8d
    return v2

    .line 143
    :pswitch_8e
    check-cast p1, [B

    .line 144
    .line 145
    check-cast p2, [B

    .line 146
    .line 147
    array-length v0, p1

    .line 148
    array-length v1, p2

    .line 149
    if-eq v0, v1, :cond_9a

    .line 150
    .line 151
    array-length p1, p1

    .line 152
    array-length p2, p2

    .line 153
    sub-int/2addr p1, p2

    .line 154
    goto :goto_ac

    .line 155
    :cond_9a
    const/4 v0, 0x0

    .line 156
    move v1, v0

    .line 157
    :goto_9c
    array-length v2, p1

    .line 158
    if-ge v1, v2, :cond_ab

    .line 159
    .line 160
    aget-byte v2, p1, v1

    .line 161
    .line 162
    aget-byte v3, p2, v1

    .line 163
    .line 164
    if-eq v2, v3, :cond_a8

    .line 165
    .line 166
    sub-int p1, v2, v3

    .line 167
    .line 168
    goto :goto_ac

    .line 169
    :cond_a8
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto :goto_9c

    .line 172
    :cond_ab
    move p1, v0

    .line 173
    :goto_ac
    return p1

    .line 174
    nop

    .line 175
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_57
        :pswitch_2e
    .end packed-switch
.end method
