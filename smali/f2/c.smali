###### Class f2.c (f2.c)
.class public final Lf2/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lf2/c;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 1
    iget v0, p0, Lf2/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_9e

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Exception;

    .line 7
    .line 8
    const-string v0, "error"

    .line 9
    .line 10
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-class v0, Lg2/b;

    .line 14
    .line 15
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_17

    .line 21
    .line 22
    :goto_15
    move-object v1, v2

    .line 23
    goto :goto_1f

    .line 24
    :cond_17
    :try_start_17
    sget-object v1, Lg2/b;->b:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1a

    .line 25
    .line 26
    goto :goto_1f

    .line 27
    :catchall_1a
    move-exception v1

    .line 28
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_15

    .line 32
    :goto_1f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2e

    .line 44
    .line 45
    :goto_2c
    move-object v0, v2

    .line 46
    goto :goto_36

    .line 47
    :cond_2e
    :try_start_2e
    sget-object v0, Lg2/b;->f:Le2/a;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_31

    .line 48
    .line 49
    goto :goto_36

    .line 50
    :catchall_31
    move-exception v1

    .line 51
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2c

    .line 55
    :goto_36
    if-eqz v0, :cond_4c

    .line 56
    .line 57
    new-instance v1, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "gps_pa_failed_reason"

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, "gps_pa_failed"

    .line 72
    .line 73
    invoke-virtual {v0, v1, p1}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_4c
    const-string p1, "gpsDebugLogger"

    .line 78
    .line 79
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v2

    .line 83
    :pswitch_52
    check-cast p1, Ljava/lang/Exception;

    .line 84
    .line 85
    const-string v0, "error"

    .line 86
    .line 87
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const-class v0, Lf2/d;

    .line 91
    .line 92
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const/4 v2, 0x0

    .line 97
    if-eqz v1, :cond_64

    .line 98
    .line 99
    :goto_62
    move-object v1, v2

    .line 100
    goto :goto_6c

    .line 101
    :cond_64
    :try_start_64
    sget-object v1, Lf2/d;->b:Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_64 .. :try_end_66} :catchall_67

    .line 102
    .line 103
    goto :goto_6c

    .line 104
    :catchall_67
    move-exception v1

    .line 105
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_62

    .line 109
    :goto_6c
    const-string v3, "OUTCOME_RECEIVER_TRIGGER_FAILURE"

    .line 110
    .line 111
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_79

    .line 119
    .line 120
    :goto_77
    move-object v0, v2

    .line 121
    goto :goto_81

    .line 122
    :cond_79
    :try_start_79
    sget-object v0, Lf2/d;->d:Le2/a;
    :try_end_7b
    .catchall {:try_start_79 .. :try_end_7b} :catchall_7c

    .line 123
    .line 124
    goto :goto_81

    .line 125
    :catchall_7c
    move-exception v1

    .line 126
    invoke-static {v1, v0}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_77

    .line 130
    :goto_81
    if-eqz v0, :cond_97

    .line 131
    .line 132
    new-instance v1, Landroid/os/Bundle;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v2, "gps_ara_failed_reason"

    .line 138
    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string p1, "gps_ara_failed"

    .line 147
    .line 148
    invoke-virtual {v0, v1, p1}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :cond_97
    const-string p1, "gpsDebugLogger"

    .line 153
    .line 154
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v2

    .line 158
    nop

    .line 159
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_52
    .end packed-switch
.end method

.method public final onResult(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget v0, p0, Lf2/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_7c

    .line 4
    .line 5
    .line 6
    const-string v0, "result"

    .line 7
    .line 8
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-class p1, Lg2/b;

    .line 12
    .line 13
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_15

    .line 19
    .line 20
    :goto_13
    move-object v0, v1

    .line 21
    goto :goto_1d

    .line 22
    :cond_15
    :try_start_15
    sget-object v0, Lg2/b;->b:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    .line 23
    .line 24
    goto :goto_1d

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_13

    .line 30
    :goto_1d
    const-string v2, "Successfully joined custom audience"

    .line 31
    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2a

    .line 40
    .line 41
    :goto_28
    move-object p1, v1

    .line 42
    goto :goto_32

    .line 43
    :cond_2a
    :try_start_2a
    sget-object p1, Lg2/b;->f:Le2/a;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2d

    .line 44
    .line 45
    goto :goto_32

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_28

    .line 51
    :goto_32
    if-eqz p1, :cond_3a

    .line 52
    .line 53
    const-string v0, "gps_pa_succeed"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v0}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3a
    const-string p1, "gpsDebugLogger"

    .line 60
    .line 61
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :pswitch_40
    const-string v0, "result"

    .line 66
    .line 67
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-class p1, Lf2/d;

    .line 71
    .line 72
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v0, :cond_50

    .line 78
    .line 79
    :goto_4e
    move-object v0, v1

    .line 80
    goto :goto_58

    .line 81
    :cond_50
    :try_start_50
    sget-object v0, Lf2/d;->b:Ljava/lang/String;
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_53

    .line 82
    .line 83
    goto :goto_58

    .line 84
    :catchall_53
    move-exception v0

    .line 85
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_4e

    .line 89
    :goto_58
    const-string v2, "OUTCOME_RECEIVER_TRIGGER_SUCCESS"

    .line 90
    .line 91
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_65

    .line 99
    .line 100
    :goto_63
    move-object p1, v1

    .line 101
    goto :goto_6d

    .line 102
    :cond_65
    :try_start_65
    sget-object p1, Lf2/d;->d:Le2/a;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_68

    .line 103
    .line 104
    goto :goto_6d

    .line 105
    :catchall_68
    move-exception v0

    .line 106
    invoke-static {v0, p1}, Lv2/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_63

    .line 110
    :goto_6d
    if-eqz p1, :cond_75

    .line 111
    .line 112
    const-string v0, "gps_ara_succeed"

    .line 113
    .line 114
    invoke-virtual {p1, v1, v0}, Le2/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_75
    const-string p1, "gpsDebugLogger"

    .line 119
    .line 120
    invoke-static {p1}, Ld7/g;->i(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    nop

    .line 125
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method
