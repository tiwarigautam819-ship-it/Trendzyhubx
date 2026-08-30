###### Class h5.c (h5.c)
.class public final synthetic Lh5/c;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh5/d;


# direct methods
.method public synthetic constructor <init>(Lh5/d;I)V
    .registers 3

    .line 1
    iput p2, p0, Lh5/c;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lh5/c;->b:Lh5/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    iget v0, p0, Lh5/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_96

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lh5/c;->b:Lh5/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lh5/d;->b()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_b
    iget-object v0, p0, Lh5/c;->b:Lh5/d;

    .line 13
    .line 14
    sget-object v1, Lh5/d;->m:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_10
    iget-object v2, v0, Lh5/d;->a:Lt4/g;

    .line 18
    .line 19
    invoke-virtual {v2}, Lt4/g;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v2, v2, Lt4/g;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/y4;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/y4;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_27

    .line 28
    :try_start_1b
    iget-object v3, v0, Lh5/d;->c:Lcom/google/android/gms/internal/measurement/y4;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/y4;->D()Li5/b;

    .line 31
    .line 32
    .line 33
    move-result-object v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_87

    .line 34
    if-eqz v2, :cond_2a

    .line 35
    .line 36
    :try_start_23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y4;->E()V

    .line 37
    .line 38
    .line 39
    goto :goto_2a

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    goto/16 :goto_8e

    .line 42
    .line 43
    :cond_2a
    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_27

    .line 44
    :try_start_2b
    iget v1, v3, Li5/b;->b:I

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v4, 0x5

    .line 48
    const/4 v5, 0x1

    .line 49
    if-ne v1, v4, :cond_34

    .line 50
    .line 51
    move v6, v5

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v6, v2

    .line 54
    :goto_35
    if-nez v6, :cond_4d

    .line 55
    .line 56
    const/4 v6, 0x3

    .line 57
    if-ne v1, v6, :cond_3b

    .line 58
    .line 59
    move v2, v5

    .line 60
    :cond_3b
    if-eqz v2, :cond_3e

    .line 61
    .line 62
    goto :goto_4d

    .line 63
    :cond_3e
    iget-object v1, v0, Lh5/d;->d:Lh5/k;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Lh5/k;->a(Li5/b;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_86

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lh5/d;->c(Li5/b;)Li5/b;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_51

    .line 76
    :catch_4b
    move-exception v1

    .line 77
    goto :goto_83

    .line 78
    :cond_4d
    :goto_4d
    invoke-virtual {v0, v3}, Lh5/d;->i(Li5/b;)Li5/b;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_51
    .catch Lh5/f; {:try_start_2b .. :try_end_51} :catch_4b

    .line 82
    :goto_51
    invoke-virtual {v0, v1}, Lh5/d;->f(Li5/b;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3, v1}, Lh5/d;->m(Li5/b;Li5/b;)V

    .line 86
    .line 87
    .line 88
    iget v2, v1, Li5/b;->b:I

    .line 89
    .line 90
    const/4 v3, 0x4

    .line 91
    if-ne v2, v3, :cond_61

    .line 92
    .line 93
    iget-object v2, v1, Li5/b;->a:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lh5/d;->l(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_61
    iget v2, v1, Li5/b;->b:I

    .line 99
    .line 100
    if-ne v2, v4, :cond_6e

    .line 101
    .line 102
    new-instance v1, Lh5/f;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lh5/d;->j(Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    goto :goto_86

    .line 111
    :cond_6e
    const/4 v3, 0x2

    .line 112
    if-eq v2, v3, :cond_78

    .line 113
    .line 114
    if-ne v2, v5, :cond_74

    .line 115
    .line 116
    goto :goto_78

    .line 117
    :cond_74
    invoke-virtual {v0, v1}, Lh5/d;->k(Li5/b;)V

    .line 118
    .line 119
    .line 120
    goto :goto_86

    .line 121
    :cond_78
    :goto_78
    new-instance v1, Ljava/io/IOException;

    .line 122
    .line 123
    const-string v2, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lh5/d;->j(Ljava/lang/Exception;)V

    .line 129
    .line 130
    .line 131
    goto :goto_86

    .line 132
    :goto_83
    invoke-virtual {v0, v1}, Lh5/d;->j(Ljava/lang/Exception;)V

    .line 133
    .line 134
    .line 135
    :cond_86
    :goto_86
    return-void

    .line 136
    :catchall_87
    move-exception v0

    .line 137
    if-eqz v2, :cond_8d

    .line 138
    .line 139
    :try_start_8a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/y4;->E()V

    .line 140
    .line 141
    .line 142
    :cond_8d
    throw v0

    .line 143
    :goto_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_27

    .line 144
    throw v0

    .line 145
    :pswitch_90
    iget-object v0, p0, Lh5/c;->b:Lh5/d;

    .line 146
    .line 147
    invoke-virtual {v0}, Lh5/d;->b()V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_90
        :pswitch_b
    .end packed-switch
.end method
