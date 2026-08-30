###### Class q2.u (q2.u)
.class public final synthetic Lq2/u;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly1/l;


# direct methods
.method public synthetic constructor <init>(Ly1/l;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lq2/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/u;->b:Ly1/l;

    return-void
.end method

.method public synthetic constructor <init>(Ly1/l;Lq2/t;)V
    .registers 3

    .line 2
    const/4 p2, 0x1

    iput p2, p0, Lq2/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/u;->b:Ly1/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget v0, p0, Lq2/u;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_d0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lq2/u;->b:Ly1/l;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lx1/q;

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Lq2/o;->h:Lq2/o;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lx1/q;

    .line 23
    .line 24
    const/16 v1, 0x14

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lq2/o;->g:Lq2/o;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lx1/q;

    .line 35
    .line 36
    const/16 v1, 0x15

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lq2/o;->i:Lq2/o;

    .line 42
    .line 43
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lx1/q;

    .line 47
    .line 48
    const/16 v1, 0x16

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lq2/o;->B:Lq2/o;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lx1/q;

    .line 59
    .line 60
    const/16 v1, 0x8

    .line 61
    .line 62
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lq2/o;->A:Lq2/o;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 68
    .line 69
    .line 70
    new-instance v0, Lx1/q;

    .line 71
    .line 72
    const/16 v1, 0x9

    .line 73
    .line 74
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lq2/o;->E:Lq2/o;

    .line 78
    .line 79
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lx1/q;

    .line 83
    .line 84
    const/16 v1, 0xa

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 87
    .line 88
    .line 89
    sget-object v1, Lq2/o;->z:Lq2/o;

    .line 90
    .line 91
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lx1/q;

    .line 95
    .line 96
    const/16 v1, 0xb

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 99
    .line 100
    .line 101
    sget-object v1, Lq2/o;->m:Lq2/o;

    .line 102
    .line 103
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lx1/q;

    .line 107
    .line 108
    const/16 v1, 0xc

    .line 109
    .line 110
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lq2/o;->v:Lq2/o;

    .line 114
    .line 115
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lx1/q;

    .line 119
    .line 120
    const/16 v1, 0xd

    .line 121
    .line 122
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 123
    .line 124
    .line 125
    sget-object v1, Lq2/o;->w:Lq2/o;

    .line 126
    .line 127
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lx1/q;

    .line 131
    .line 132
    const/16 v1, 0xe

    .line 133
    .line 134
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 135
    .line 136
    .line 137
    sget-object v1, Lq2/o;->x:Lq2/o;

    .line 138
    .line 139
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lx1/q;

    .line 143
    .line 144
    const/16 v1, 0xf

    .line 145
    .line 146
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 147
    .line 148
    .line 149
    sget-object v1, Lq2/o;->y:Lq2/o;

    .line 150
    .line 151
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lx1/q;

    .line 155
    .line 156
    const/16 v1, 0x10

    .line 157
    .line 158
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 159
    .line 160
    .line 161
    sget-object v1, Lq2/o;->f:Lq2/o;

    .line 162
    .line 163
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Lx1/q;

    .line 167
    .line 168
    const/16 v1, 0x11

    .line 169
    .line 170
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 171
    .line 172
    .line 173
    sget-object v1, Lq2/o;->S:Lq2/o;

    .line 174
    .line 175
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lx1/q;

    .line 179
    .line 180
    const/16 v1, 0x12

    .line 181
    .line 182
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 183
    .line 184
    .line 185
    sget-object v1, Lq2/o;->T:Lq2/o;

    .line 186
    .line 187
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 188
    .line 189
    .line 190
    new-instance v0, Lx1/q;

    .line 191
    .line 192
    const/16 v1, 0x13

    .line 193
    .line 194
    invoke-direct {v0, v1}, Lx1/q;-><init>(I)V

    .line 195
    .line 196
    .line 197
    sget-object v1, Lq2/o;->U:Lq2/o;

    .line 198
    .line 199
    invoke-static {v0, v1}, Lq2/q;->a(Lq2/n;Lq2/o;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_ca
    iget-object v0, p0, Lq2/u;->b:Ly1/l;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_ca
    .end packed-switch
.end method
