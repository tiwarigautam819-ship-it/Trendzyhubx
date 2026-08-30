###### Class com.google.firebase.messaging.y (com.google.firebase.messaging.y)
.class public final Lcom/google/firebase/messaging/y;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lk/a;
.implements Lh3/b;
.implements Lv4/c;


# static fields
.field public static e:Lcom/google/firebase/messaging/y;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    sparse-switch p1, :sswitch_data_24c

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 41
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    return-void

    .line 42
    :sswitch_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance p1, Lg/j;

    const/16 v0, 0xa

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lg/j;-><init>(II)V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 44
    new-instance p1, Ls/j;

    const/4 v0, 0x0

    .line 45
    invoke-direct {p1, v0}, Ls/j;-><init>(I)V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 48
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    return-void

    .line 49
    :sswitch_39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 51
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 52
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    return-void

    .line 53
    :sswitch_52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance p1, Lcom/google/android/gms/internal/measurement/y4;

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 55
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/y4;-><init>(IZ)V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/y4;->b:Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x6

    .line 58
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 59
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/y4;->c:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x0

    .line 61
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->f:Lcom/google/android/gms/internal/measurement/f0;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->g:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->h:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->i:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->j:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->k:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->l:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->J(Lcom/google/android/gms/internal/measurement/s;)V

    .line 70
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x1

    .line 71
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->E:Lcom/google/android/gms/internal/measurement/f0;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->R:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->S:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->T:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->U:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->W:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->X:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->c0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->J(Lcom/google/android/gms/internal/measurement/s;)V

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x2

    .line 82
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->d:Lcom/google/android/gms/internal/measurement/f0;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->m:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->v:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->w:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->B:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->y:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->C:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->G:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->V:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->h0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->k0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->n0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->o0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->J(Lcom/google/android/gms/internal/measurement/s;)V

    .line 97
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x3

    .line 98
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 99
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->c:Lcom/google/android/gms/internal/measurement/f0;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->b0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->e0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->J(Lcom/google/android/gms/internal/measurement/s;)V

    .line 103
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x4

    .line 104
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 105
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->H:Lcom/google/android/gms/internal/measurement/f0;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->I:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->J:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->K:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->L:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->M:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->N:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->s0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->J(Lcom/google/android/gms/internal/measurement/s;)V

    .line 114
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x5

    .line 115
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->b:Lcom/google/android/gms/internal/measurement/f0;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->D:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->Y:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->Z:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->a0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->f0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->g0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->i0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->j0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->m0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->J(Lcom/google/android/gms/internal/measurement/s;)V

    .line 127
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    const/4 v1, 0x7

    .line 128
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/s;-><init>(I)V

    .line 129
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->e:Lcom/google/android/gms/internal/measurement/f0;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/s;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->x:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->z:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->A:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->F:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->O:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->P:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->Q:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->d0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->l0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->p0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->q0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v1, Lcom/google/android/gms/internal/measurement/f0;->r0:Lcom/google/android/gms/internal/measurement/f0;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->J(Lcom/google/android/gms/internal/measurement/s;)V

    .line 143
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/google/firebase/messaging/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/messaging/y;-><init>(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/y4;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 145
    invoke-virtual {v0}, Lcom/google/firebase/messaging/y;->J()Lcom/google/firebase/messaging/y;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 146
    new-instance p1, Lcom/google/android/gms/internal/measurement/o6;

    .line 147
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p1, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 149
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 150
    new-instance v2, Lcom/google/android/gms/internal/measurement/ua;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/measurement/ua;-><init>(Lcom/google/android/gms/internal/measurement/o6;)V

    const-string p1, "require"

    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 151
    new-instance p1, Lcom/google/android/gms/internal/measurement/m1;

    .line 152
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v2, "internal.platform"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p1, Lcom/google/android/gms/internal/measurement/g;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    const-string v1, "runtime.counter"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/messaging/y;->M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    return-void

    .line 155
    :sswitch_232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 157
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 158
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_24c
    .sparse-switch
        0x1 -> :sswitch_232
        0x2 -> :sswitch_52
        0x9 -> :sswitch_39
        0xb -> :sswitch_15
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lq0/b;)V
    .registers 10

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 10
    new-instance p1, Lp0/s;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lp0/s;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 11
    invoke-virtual {p2, p1}, Lj0/a0;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 12
    iget v2, p2, Lj0/a0;->a:I

    add-int/2addr v0, v2

    .line 13
    iget-object v2, p2, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 14
    iget-object v0, p2, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    mul-int/lit8 v0, v0, 0x2

    .line 15
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 16
    invoke-virtual {p2, p1}, Lj0/a0;->a(I)I

    move-result p1

    if-eqz p1, :cond_4f

    .line 17
    iget v0, p2, Lj0/a0;->a:I

    add-int/2addr p1, v0

    .line 18
    iget-object v0, p2, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 19
    iget-object p1, p2, Lj0/a0;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_50

    :cond_4f
    move p1, v1

    :goto_50
    move p2, v1

    :goto_51
    if-ge p2, p1, :cond_d6

    .line 20
    new-instance v0, Lp0/v;

    invoke-direct {v0, p0, p2}, Lp0/v;-><init>(Lcom/google/firebase/messaging/y;I)V

    .line 21
    invoke-virtual {v0}, Lp0/v;->b()Lq0/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 22
    invoke-virtual {v2, v3}, Lj0/a0;->a(I)I

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v4, v2, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lj0/a0;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_70

    :cond_6f
    move v2, v1

    .line 23
    :goto_70
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    check-cast v3, [C

    mul-int/lit8 v4, p2, 0x2

    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    .line 24
    invoke-virtual {v0}, Lp0/v;->b()Lq0/a;

    move-result-object v2

    const/16 v3, 0x10

    .line 25
    invoke-virtual {v2, v3}, Lj0/a0;->a(I)I

    move-result v4

    if-eqz v4, :cond_9a

    .line 26
    iget v5, v2, Lj0/a0;->a:I

    add-int/2addr v4, v5

    .line 27
    iget-object v5, v2, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    add-int/2addr v5, v4

    .line 28
    iget-object v2, v2, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_9b

    :cond_9a
    move v2, v1

    :goto_9b
    const/4 v4, 0x1

    if-lez v2, :cond_a0

    move v2, v4

    goto :goto_a1

    :cond_a0
    move v2, v1

    :goto_a1
    if-eqz v2, :cond_ce

    .line 29
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    check-cast v2, Lp0/s;

    .line 30
    invoke-virtual {v0}, Lp0/v;->b()Lq0/a;

    move-result-object v5

    .line 31
    invoke-virtual {v5, v3}, Lj0/a0;->a(I)I

    move-result v3

    if-eqz v3, :cond_c6

    .line 32
    iget v6, v5, Lj0/a0;->a:I

    add-int/2addr v3, v6

    .line 33
    iget-object v6, v5, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    add-int/2addr v6, v3

    .line 34
    iget-object v3, v5, Lj0/a0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    goto :goto_c7

    :cond_c6
    move v3, v1

    :goto_c7
    sub-int/2addr v3, v4

    .line 35
    invoke-virtual {v2, v0, v1, v3}, Lp0/s;->a(Lp0/v;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_51

    .line 36
    :cond_ce
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid metadata codepoint length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d6
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/y4;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized u()Lcom/google/firebase/messaging/y;
    .registers 3

    .line 1
    const-class v0, Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/firebase/messaging/y;->e:Lcom/google/firebase/messaging/y;

    .line 5
    .line 6
    if-nez v1, :cond_12

    .line 7
    .line 8
    new-instance v1, Lcom/google/firebase/messaging/y;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/y;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/google/firebase/messaging/y;->e:Lcom/google/firebase/messaging/y;

    .line 15
    .line 16
    goto :goto_12

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    :goto_12
    sget-object v1, Lcom/google/firebase/messaging/y;->e:Lcom/google/firebase/messaging/y;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_10

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_10

    .line 24
    throw v1
.end method


# virtual methods
.method public declared-synchronized A()Ljava/util/List;
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {v0}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_26

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lv7/f;

    .line 30
    .line 31
    iget-object v2, v2, Lv7/f;->c:Lv7/i;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_12

    .line 37
    :catchall_24
    move-exception v0

    .line 38
    goto :goto_31

    .line 39
    :cond_26
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "unmodifiableList(readyAsyncCalls.map { it.call })"

    .line 44
    .line 45
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_24

    .line 46
    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-object v0

    .line 50
    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_24

    .line 51
    throw v0
.end method

.method public declared-synchronized B()Ljava/util/List;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {v1}, Ls6/i;->n(Ljava/lang/Iterable;)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2a

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lv7/f;

    .line 34
    .line 35
    iget-object v3, v3, Lv7/f;->c:Lv7/i;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_16

    .line 41
    :catchall_28
    move-exception v0

    .line 42
    goto :goto_39

    .line 43
    :cond_2a
    invoke-static {v0, v2}, Ls6/g;->t(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "unmodifiableList(running\u2026yncCalls.map { it.call })"

    .line 52
    .line 53
    invoke-static {v1, v0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_28

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return-object v0

    .line 58
    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_28

    .line 59
    throw v0
.end method

.method public declared-synchronized C()I
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/ArrayDeque;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    .line 18
    add-int/2addr v0, v1

    .line 19
    monitor-exit p0

    .line 20
    return v0

    .line 21
    :catchall_14
    move-exception v0

    .line 22
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .line 23
    throw v0
.end method

.method public D(Ljava/lang/Class;)Ljava/util/Set;
    .registers 2

    .line 1
    invoke-static {p1}, Lv4/p;->a(Ljava/lang/Class;)Lv4/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/y;->g(Lv4/p;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public E(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    if-eqz p1, :cond_d

    .line 6
    .line 7
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/os/Bundle;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_d
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/os/Bundle;

    .line 19
    .line 20
    return-object p1
.end method

.method public F(Lcom/google/android/gms/internal/measurement/e;)Lcom/google/android/gms/internal/measurement/n;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/e;->l()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_26

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/gms/internal/measurement/y4;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/h;

    .line 36
    .line 37
    if-eqz v2, :cond_6

    .line 38
    .line 39
    :cond_26
    return-object v0
.end method

.method public G(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/y4;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public varargs H(Lcom/google/firebase/messaging/y;[Lcom/google/android/gms/internal/measurement/l4;)Lcom/google/android/gms/internal/measurement/n;
    .registers 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v1, :cond_27

    .line 6
    .line 7
    aget-object v0, p2, v2

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/a5;->a(Lcom/google/android/gms/internal/measurement/l4;)Lcom/google/android/gms/internal/measurement/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Lcom/google/firebase/messaging/y;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/p4;->j(Lcom/google/firebase/messaging/y;)V

    .line 18
    .line 19
    .line 20
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/q;

    .line 21
    .line 22
    if-nez v3, :cond_1c

    .line 23
    .line 24
    instance-of v3, v0, Lcom/google/android/gms/internal/measurement/o;

    .line 25
    .line 26
    if-nez v3, :cond_1c

    .line 27
    .line 28
    goto :goto_24

    .line 29
    :cond_1c
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lcom/google/android/gms/internal/measurement/y4;

    .line 32
    .line 33
    invoke-virtual {v3, p1, v0}, Lcom/google/android/gms/internal/measurement/y4;->G(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_24
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_27
    return-object v0
.end method

.method public I(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;
    .registers 5

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_12

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_12
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/google/firebase/messaging/y;

    .line 22
    .line 23
    if-eqz v0, :cond_19

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, " is not defined"

    .line 29
    .line 30
    invoke-static {p1, v1}, Lq2/x;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public J()Lcom/google/firebase/messaging/y;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/messaging/y;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/measurement/y4;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/messaging/y;-><init>(Lcom/google/firebase/messaging/y;Lcom/google/android/gms/internal/measurement/y4;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public K(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_17

    .line 14
    .line 15
    if-nez p2, :cond_14

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_14
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_17
    return-void
.end method

.method public L(Ljava/lang/String;)Z
    .registers 4

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_d

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_d
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/google/firebase/messaging/y;

    .line 17
    .line 18
    if-eqz v0, :cond_14

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public M(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .registers 7

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    iget-object v1, v0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object v2, v0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Lcom/google/firebase/messaging/y;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_19

    .line 15
    .line 16
    if-eqz v2, :cond_19

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/google/firebase/messaging/y;->L(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_19

    .line 23
    .line 24
    move-object v0, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_19
    iget-object v0, v0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2c

    .line 35
    .line 36
    if-nez p2, :cond_29

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_29
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_2c
    return-void
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-static {p1}, Lv4/p;->a(Ljava/lang/Class;)Lv4/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_27

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lv4/c;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lv4/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v1, Ld5/c;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1f

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1f
    new-instance p1, Lv4/q;

    .line 33
    .line 34
    check-cast v0, Ld5/c;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_27
    new-instance v0, Landroidx/fragment/app/a0;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "Attempting to request an undeclared dependency "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "."

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0
.end method

.method public b(Lk/b;Landroid/view/MenuItem;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/y;->q(Lk/b;)Lk/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Ll/u;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroid/content/Context;

    .line 14
    .line 15
    check-cast p2, Le0/a;

    .line 16
    .line 17
    invoke-direct {v1, v2, p2}, Ll/u;-><init>(Landroid/content/Context;Le0/a;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public c(Lv4/p;)Lg5/a;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lv4/c;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lv4/c;->c(Lv4/p;)Lg5/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    new-instance v0, Landroidx/fragment/app/a0;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Attempting to request an undeclared dependency Provider<"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ">."

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public d(Lv4/p;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lv4/c;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lv4/c;->d(Lv4/p;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    new-instance v0, Landroidx/fragment/app/a0;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Attempting to request an undeclared dependency "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "."

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public e(Lk/b;Landroid/view/Menu;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/y;->q(Lk/b;)Lk/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ls/j;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/Menu;

    .line 18
    .line 19
    if-nez v2, :cond_23

    .line 20
    .line 21
    new-instance v2, Ll/c0;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Landroid/content/Context;

    .line 26
    .line 27
    move-object v4, p2

    .line 28
    check-cast v4, Ll/n;

    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Ll/c0;-><init>(Landroid/content/Context;Ll/n;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2, v2}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_23
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public f(Ljava/lang/Class;)Lg5/a;
    .registers 2

    .line 1
    invoke-static {p1}, Lv4/p;->a(Ljava/lang/Class;)Lv4/p;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/y;->c(Lv4/p;)Lg5/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(Lv4/p;)Ljava/util/Set;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_13

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lv4/c;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lv4/c;->g(Lv4/p;)Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    new-instance v0, Landroidx/fragment/app/a0;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Attempting to request an undeclared dependency Set<"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ">."

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq6/a;

    .line 4
    .line 5
    invoke-interface {v0}, Lq6/a;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lq6/a;

    .line 14
    .line 15
    invoke-interface {v1}, Lq6/a;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lm3/d;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lc5/h;

    .line 24
    .line 25
    invoke-virtual {v2}, Lc5/h;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lc5/h;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Lq6/a;

    .line 34
    .line 35
    invoke-interface {v3}, Lq6/a;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ln3/c;

    .line 40
    .line 41
    new-instance v4, Lcom/google/firebase/messaging/y;

    .line 42
    .line 43
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/firebase/messaging/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v4
.end method

.method public h(Lk/b;Landroid/view/Menu;)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/y;->q(Lk/b;)Lk/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ls/j;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/view/Menu;

    .line 18
    .line 19
    if-nez v2, :cond_23

    .line 20
    .line 21
    new-instance v2, Ll/c0;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Landroid/content/Context;

    .line 26
    .line 27
    move-object v4, p2

    .line 28
    check-cast v4, Ll/n;

    .line 29
    .line 30
    invoke-direct {v2, v3, v4}, Ll/c0;-><init>(Landroid/content/Context;Ll/n;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p2, v2}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_23
    invoke-interface {v0, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public i(Lk/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/y;->q(Lk/b;)Lk/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public j(Landroidx/fragment/app/c0;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1e

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_f
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_1b

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p1, Landroidx/fragment/app/c0;->k:Z

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .line 30
    throw p1

    .line 31
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Fragment already added: "

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .registers 8

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_34

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ls/j;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v0, :cond_2d

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_21
    if-ge v2, v1, :cond_2d

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0, v3, p2, p3}, Lcom/google/firebase/messaging/y;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_21

    .line 46
    :cond_2d
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string p2, "This graph contains cyclic dependencies"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public declared-synchronized l()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    if-nez v0, :cond_3c

    .line 7
    .line 8
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    .line 13
    .line 14
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Ls7/b;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " Dispatcher"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v2, "name"

    .line 37
    .line 38
    invoke-static {v2, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Ls7/a;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-direct {v8, v0, v2}, Ls7/a;-><init>(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const v3, 0x7fffffff

    .line 49
    .line 50
    .line 51
    const-wide/16 v4, 0x3c

    .line 52
    .line 53
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 57
    .line 58
    goto :goto_3c

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    goto :goto_45

    .line 61
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 64
    .line 65
    invoke-static {v0}, Ld7/g;->c(Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_3a

    .line 66
    .line 67
    .line 68
    monitor-exit p0

    .line 69
    return-object v0

    .line 70
    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_3a

    .line 71
    throw v0
.end method

.method public m(Ljava/lang/String;)Landroidx/fragment/app/c0;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/fragment/app/g1;

    .line 10
    .line 11
    if-eqz p1, :cond_f

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public n(Ljava/lang/String;)Landroidx/fragment/app/c0;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_30

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/fragment/app/g1;

    .line 24
    .line 25
    if-eqz v1, :cond_c

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 28
    .line 29
    iget-object v2, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_25

    .line 36
    .line 37
    goto :goto_2d

    .line 38
    :cond_25
    iget-object v1, v1, Landroidx/fragment/app/c0;->D:Landroidx/fragment/app/z0;

    .line 39
    .line 40
    iget-object v1, v1, Landroidx/fragment/app/y0;->c:Lcom/google/firebase/messaging/y;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/google/firebase/messaging/y;->n(Ljava/lang/String;)Landroidx/fragment/app/c0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_2d
    if-eqz v1, :cond_c

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_30
    const/4 p1, 0x0

    .line 50
    return-object p1
.end method

.method public o(Ljava/util/ArrayDeque;Ljava/lang/Object;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    .line 6
    if-eqz p1, :cond_c

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/messaging/y;->z()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_c
    :try_start_c
    new-instance p1, Ljava/lang/AssertionError;

    .line 14
    .line 15
    const-string p2, "Call wasn\'t in-flight!"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    throw p1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 21
    :catchall_14
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public p(Lv7/f;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lv7/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/messaging/y;->o(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public q(Lk/b;)Lk/f;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v1, :cond_1b

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lk/f;

    .line 17
    .line 18
    if-eqz v3, :cond_18

    .line 19
    .line 20
    iget-object v4, v3, Lk/f;->b:Lk/b;

    .line 21
    .line 22
    if-ne v4, p1, :cond_18

    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_9

    .line 28
    :cond_1b
    new-instance v1, Lk/f;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {v1, v2, p1}, Lk/f;-><init>(Landroid/content/Context;Lk/b;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public r()Ljava/util/ArrayList;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_23

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/g1;

    .line 29
    .line 30
    if-eqz v2, :cond_11

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_11

    .line 36
    :cond_23
    return-object v0
.end method

.method public s()Ljava/util/ArrayList;
    .registers 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2a

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroidx/fragment/app/g1;

    .line 29
    .line 30
    if-eqz v2, :cond_25

    .line 31
    .line 32
    iget-object v2, v2, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_11

    .line 38
    :cond_25
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_11

    .line 43
    :cond_2a
    return-object v0
.end method

.method public t()Ljava/util/List;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 10
    .line 11
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_12
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :catchall_1d
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    .line 32
    throw v1
.end method

.method public v(Landroid/content/Context;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Boolean;

    .line 4
    .line 5
    if-nez v0, :cond_17

    .line 6
    .line 7
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2f

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    const-string v0, "FirebaseMessaging"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2f

    .line 42
    .line 43
    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/google/firebase/messaging/y;->c:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public w(Landroid/content/Context;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Boolean;

    .line 4
    .line 5
    if-nez v0, :cond_17

    .line 6
    .line 7
    const-string v0, "android.permission.WAKE_LOCK"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_10

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2f

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    const-string v0, "FirebaseMessaging"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2f

    .line 42
    .line 43
    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2f
    iget-object p1, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public x(Landroidx/fragment/app/g1;)V
    .registers 5

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_f

    .line 14
    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v1, v0, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-boolean p1, v0, Landroidx/fragment/app/c0;->L:Z

    .line 22
    .line 23
    if-eqz p1, :cond_2e

    .line 24
    .line 25
    iget-boolean p1, v0, Landroidx/fragment/app/c0;->K:Z

    .line 26
    .line 27
    if-eqz p1, :cond_24

    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/fragment/app/c1;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/fragment/app/c1;->c(Landroidx/fragment/app/c0;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2b

    .line 37
    :cond_24
    iget-object p1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroidx/fragment/app/c1;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/fragment/app/c1;->g(Landroidx/fragment/app/c0;)V

    .line 42
    .line 43
    .line 44
    :goto_2b
    const/4 p1, 0x0

    .line 45
    iput-boolean p1, v0, Landroidx/fragment/app/c0;->L:Z

    .line 46
    .line 47
    :cond_2e
    const/4 p1, 0x2

    .line 48
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_48

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Added fragment to active set "

    .line 57
    .line 58
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "FragmentManager"

    .line 69
    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    :cond_48
    return-void
.end method

.method public y(Landroidx/fragment/app/g1;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v1, p1, Landroidx/fragment/app/g1;->c:Landroidx/fragment/app/c0;

    .line 6
    .line 7
    iget-boolean v2, v1, Landroidx/fragment/app/c0;->K:Z

    .line 8
    .line 9
    if-eqz v2, :cond_11

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroidx/fragment/app/c1;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroidx/fragment/app/c1;->g(Landroidx/fragment/app/c0;)V

    .line 16
    .line 17
    .line 18
    :cond_11
    iget-object v2, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eq v2, p1, :cond_1a

    .line 25
    .line 26
    goto :goto_40

    .line 27
    :cond_1a
    iget-object p1, v1, Landroidx/fragment/app/c0;->e:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroidx/fragment/app/g1;

    .line 35
    .line 36
    if-nez p1, :cond_26

    .line 37
    .line 38
    goto :goto_40

    .line 39
    :cond_26
    const/4 p1, 0x2

    .line 40
    invoke-static {p1}, Landroidx/fragment/app/y0;->J(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_40

    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "Removed fragment from active set "

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "FragmentManager"

    .line 61
    .line 62
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :cond_40
    :goto_40
    return-void
.end method

.method public z()V
    .registers 9

    .line 1
    sget-object v0, Ls7/b;->a:[B

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/google/firebase/messaging/y;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "readyAsyncCalls.iterator()"

    .line 18
    .line 19
    invoke-static {v2, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_4b

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lv7/f;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Ljava/util/ArrayDeque;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/16 v4, 0x40

    .line 43
    .line 44
    if-ge v3, v4, :cond_4b

    .line 45
    .line 46
    iget-object v3, v2, Lv7/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x5

    .line 53
    if-ge v3, v4, :cond_15

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 56
    .line 57
    .line 58
    iget-object v3, v2, Lv7/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/google/firebase/messaging/y;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v3, Ljava/util/ArrayDeque;

    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_15

    .line 74
    :catchall_49
    move-exception v0

    .line 75
    goto :goto_96

    .line 76
    :cond_4b
    invoke-virtual {p0}, Lcom/google/firebase/messaging/y;->C()I
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_49

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x0

    .line 85
    :goto_54
    if-ge v2, v1, :cond_95

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lv7/f;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/google/firebase/messaging/y;->l()Ljava/util/concurrent/ExecutorService;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    iget-object v5, v3, Lv7/f;->c:Lv7/i;

    .line 101
    .line 102
    sget-object v6, Ls7/b;->a:[B

    .line 103
    .line 104
    :try_start_67
    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_6c
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_67 .. :try_end_6c} :catch_6d
    .catchall {:try_start_67 .. :try_end_6c} :catchall_8c

    .line 107
    .line 108
    .line 109
    goto :goto_89

    .line 110
    :catch_6d
    move-exception v4

    .line 111
    :try_start_6e
    new-instance v6, Ljava/io/InterruptedIOException;

    .line 112
    .line 113
    const-string v7, "executor rejected"

    .line 114
    .line 115
    invoke-direct {v6, v7}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6}, Lv7/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    .line 122
    .line 123
    .line 124
    const-string v4, "GA4Reporter"

    .line 125
    .line 126
    const-string v7, "logEvent request failed"

    .line 127
    .line 128
    invoke-static {v4, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_6e .. :try_end_82} :catchall_8c

    .line 129
    .line 130
    .line 131
    iget-object v4, v5, Lv7/i;->a:Lr7/r;

    .line 132
    .line 133
    iget-object v4, v4, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 134
    .line 135
    invoke-virtual {v4, v3}, Lcom/google/firebase/messaging/y;->p(Lv7/f;)V

    .line 136
    .line 137
    .line 138
    :goto_89
    add-int/lit8 v2, v2, 0x1

    .line 139
    .line 140
    goto :goto_54

    .line 141
    :catchall_8c
    move-exception v0

    .line 142
    iget-object v1, v5, Lv7/i;->a:Lr7/r;

    .line 143
    .line 144
    iget-object v1, v1, Lr7/r;->a:Lcom/google/firebase/messaging/y;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Lcom/google/firebase/messaging/y;->p(Lv7/f;)V

    .line 147
    .line 148
    .line 149
    throw v0

    .line 150
    :cond_95
    return-void

    .line 151
    :goto_96
    monitor-exit p0

    .line 152
    throw v0
.end method
