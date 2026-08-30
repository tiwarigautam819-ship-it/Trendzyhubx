###### Class a1.b (a1.b)
.class public final La1/b;
.super Ld7/h;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lc7/l;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    iput p2, p0, La1/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, La1/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, La1/b;->d:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Ld7/h;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    iget v0, p0, La1/b;->b:I

    .line 2
    .line 3
    sget-object v1, Lr6/j;->a:Lr6/j;

    .line 4
    .line 5
    iget-object v2, p0, La1/b;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, La1/b;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_a8

    .line 10
    .line 11
    .line 12
    check-cast p1, Ld/a;

    .line 13
    .line 14
    const-string v0, "result"

    .line 15
    .line 16
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget v0, p1, Ld/a;->a:I

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    if-ne v0, v4, :cond_2a

    .line 23
    .line 24
    check-cast v3, Ly2/q;

    .line 25
    .line 26
    invoke-virtual {v3}, Ly2/q;->K()Ly2/o;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-object v3, Lx1/r;->a:Lx1/r;

    .line 31
    .line 32
    invoke-static {}, Lq2/g;->k()V

    .line 33
    .line 34
    .line 35
    sget v3, Lx1/r;->i:I

    .line 36
    .line 37
    iget-object p1, p1, Ld/a;->b:Landroid/content/Intent;

    .line 38
    .line 39
    invoke-virtual {v2, v3, v0, p1}, Ly2/o;->i(IILandroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    goto :goto_2f

    .line 43
    :cond_2a
    check-cast v2, Landroidx/fragment/app/h0;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    :goto_2f
    return-object v1

    .line 49
    :pswitch_30
    check-cast p1, Ljava/lang/Throwable;

    .line 50
    .line 51
    check-cast v3, Lu/i;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    const/4 v4, 0x1

    .line 55
    if-eqz p1, :cond_66

    .line 56
    .line 57
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    .line 58
    .line 59
    if-eqz v2, :cond_51

    .line 60
    .line 61
    iput-boolean v4, v3, Lu/i;->d:Z

    .line 62
    .line 63
    iget-object p1, v3, Lu/i;->b:Lu/k;

    .line 64
    .line 65
    if-eqz p1, :cond_99

    .line 66
    .line 67
    iget-object p1, p1, Lu/k;->b:Lu/j;

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Lu/h;->cancel(Z)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_99

    .line 74
    .line 75
    iput-object v0, v3, Lu/i;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object v0, v3, Lu/i;->b:Lu/k;

    .line 78
    .line 79
    iput-object v0, v3, Lu/i;->c:Lu/l;

    .line 80
    .line 81
    goto :goto_99

    .line 82
    :cond_51
    iput-boolean v4, v3, Lu/i;->d:Z

    .line 83
    .line 84
    iget-object v2, v3, Lu/i;->b:Lu/k;

    .line 85
    .line 86
    if-eqz v2, :cond_99

    .line 87
    .line 88
    iget-object v2, v2, Lu/k;->b:Lu/j;

    .line 89
    .line 90
    invoke-virtual {v2, p1}, Lu/h;->k(Ljava/lang/Throwable;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_99

    .line 95
    .line 96
    iput-object v0, v3, Lu/i;->a:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v0, v3, Lu/i;->b:Lu/k;

    .line 99
    .line 100
    iput-object v0, v3, Lu/i;->c:Lu/l;

    .line 101
    .line 102
    goto :goto_99

    .line 103
    :cond_66
    check-cast v2, Ll7/u;

    .line 104
    .line 105
    invoke-virtual {v2}, Ll7/s0;->n()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    instance-of v2, p1, Ll7/g0;

    .line 110
    .line 111
    if-nez v2, :cond_9f

    .line 112
    .line 113
    instance-of v2, p1, Ll7/i;

    .line 114
    .line 115
    if-nez v2, :cond_9a

    .line 116
    .line 117
    instance-of v2, p1, Ll7/h0;

    .line 118
    .line 119
    if-eqz v2, :cond_7c

    .line 120
    .line 121
    move-object v2, p1

    .line 122
    check-cast v2, Ll7/h0;

    .line 123
    .line 124
    goto :goto_7d

    .line 125
    :cond_7c
    move-object v2, v0

    .line 126
    :goto_7d
    if-eqz v2, :cond_85

    .line 127
    .line 128
    iget-object v2, v2, Ll7/h0;->a:Ll7/g0;

    .line 129
    .line 130
    if-nez v2, :cond_84

    .line 131
    .line 132
    goto :goto_85

    .line 133
    :cond_84
    move-object p1, v2

    .line 134
    :cond_85
    :goto_85
    iput-boolean v4, v3, Lu/i;->d:Z

    .line 135
    .line 136
    iget-object v2, v3, Lu/i;->b:Lu/k;

    .line 137
    .line 138
    if-eqz v2, :cond_99

    .line 139
    .line 140
    iget-object v2, v2, Lu/k;->b:Lu/j;

    .line 141
    .line 142
    invoke-virtual {v2, p1}, Lu/h;->j(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_99

    .line 147
    .line 148
    iput-object v0, v3, Lu/i;->a:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v0, v3, Lu/i;->b:Lu/k;

    .line 151
    .line 152
    iput-object v0, v3, Lu/i;->c:Lu/l;

    .line 153
    .line 154
    :cond_99
    :goto_99
    return-object v1

    .line 155
    :cond_9a
    check-cast p1, Ll7/i;

    .line 156
    .line 157
    iget-object p1, p1, Ll7/i;->a:Ljava/lang/Throwable;

    .line 158
    .line 159
    throw p1

    .line 160
    :cond_9f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 161
    .line 162
    const-string v0, "This job has not completed yet"

    .line 163
    .line 164
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    nop

    .line 169
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method
