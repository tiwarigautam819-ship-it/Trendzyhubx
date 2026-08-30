###### Class com.google.android.gms.internal.measurement.a5 (com.google.android.gms.internal.measurement.a5)
.class public abstract Lcom/google/android/gms/internal/measurement/a5;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static volatile a:Lq4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 1
    return-void
.end method

.method public static A(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_98

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_98

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4a

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 20
    .line 21
    if-eqz p3, :cond_3c

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_2b

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr p3, v0

    .line 41
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    iget p0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 48
    .line 49
    if-ge v2, p0, :cond_98

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_2e

    .line 61
    :cond_3c
    :goto_3c
    iget p3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 62
    .line 63
    if-ge v2, p3, :cond_98

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_3c

    .line 75
    :cond_4a
    if-eqz p3, :cond_82

    .line 76
    .line 77
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 78
    .line 79
    .line 80
    move p0, v2

    .line 81
    move p3, p0

    .line 82
    :goto_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ge p0, v0, :cond_69

    .line 87
    .line 88
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr p3, v0

    .line 103
    add-int/lit8 p0, p0, 0x1

    .line 104
    .line 105
    goto :goto_51

    .line 106
    :cond_69
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 107
    .line 108
    .line 109
    :goto_6c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-ge v2, p0, :cond_98

    .line 114
    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_6c

    .line 131
    :cond_82
    :goto_82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-ge v2, p3, :cond_98

    .line 136
    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    check-cast p3, Ljava/lang/Long;

    .line 142
    .line 143
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_82

    .line 153
    :cond_98
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/measurement/l4;)Lcom/google/android/gms/internal/measurement/n;
    .registers 4

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->n:Lcom/google/android/gms/internal/measurement/t;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/measurement/h5;->a:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->o()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Landroidx/fragment/app/m1;->e(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    aget v0, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_98

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eq v0, v1, :cond_7e

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq v0, v1, :cond_64

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    if-eq v0, v1, :cond_39

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    if-eq v0, v1, :cond_31

    .line 33
    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v1, "Invalid entity: "

    .line 41
    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "Unknown type found. Cannot convert entity"

    .line 53
    .line 54
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->r()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_5a

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/google/android/gms/internal/measurement/l4;

    .line 82
    .line 83
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/a5;->a(Lcom/google/android/gms/internal/measurement/l4;)Lcom/google/android/gms/internal/measurement/n;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_46

    .line 91
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->p()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    .line 96
    .line 97
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->t()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_78

    .line 106
    .line 107
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->s()Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/Boolean;)V

    .line 118
    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_78
    new-instance p0, Lcom/google/android/gms/internal/measurement/f;

    .line 122
    .line 123
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/Boolean;)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_7e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->u()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_92

    .line 132
    .line 133
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->n()D

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_92
    new-instance p0, Lcom/google/android/gms/internal/measurement/g;

    .line 148
    .line 149
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 150
    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_98
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->v()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_a8

    .line 158
    .line 159
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/l4;->q()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_a8
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->u:Lcom/google/android/gms/internal/measurement/p;

    .line 170
    .line 171
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;
    .registers 6

    .line 1
    if-nez p0, :cond_5

    .line 2
    .line 3
    sget-object p0, Lcom/google/android/gms/internal/measurement/n;->o:Lcom/google/android/gms/internal/measurement/l;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v0, :cond_11

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 11
    .line 12
    check-cast p0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_11
    instance-of v0, p0, Ljava/lang/Double;

    .line 19
    .line 20
    if-eqz v0, :cond_1d

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 23
    .line 24
    check-cast p0, Ljava/lang/Double;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1d
    instance-of v0, p0, Ljava/lang/Long;

    .line 31
    .line 32
    if-eqz v0, :cond_31

    .line 33
    .line 34
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 35
    .line 36
    check-cast p0, Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_31
    instance-of v0, p0, Ljava/lang/Integer;

    .line 51
    .line 52
    if-eqz v0, :cond_45

    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/measurement/g;

    .line 55
    .line 56
    check-cast p0, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_45
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 71
    .line 72
    if-eqz v0, :cond_51

    .line 73
    .line 74
    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    .line 75
    .line 76
    check-cast p0, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/Boolean;)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_51
    instance-of v0, p0, Ljava/util/Map;

    .line 83
    .line 84
    if-eqz v0, :cond_87

    .line 85
    .line 86
    new-instance v0, Lcom/google/android/gms/internal/measurement/m;

    .line 87
    .line 88
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/m;-><init>()V

    .line 89
    .line 90
    .line 91
    check-cast p0, Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_86

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/a5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v2, :cond_64

    .line 120
    .line 121
    instance-of v4, v2, Ljava/lang/String;

    .line 122
    .line 123
    if-nez v4, :cond_80

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :cond_80
    check-cast v2, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m;->b(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 132
    .line 133
    .line 134
    goto :goto_64

    .line 135
    :cond_86
    return-object v0

    .line 136
    :cond_87
    instance-of v0, p0, Ljava/util/List;

    .line 137
    .line 138
    if-eqz v0, :cond_a9

    .line 139
    .line 140
    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    .line 141
    .line 142
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e;-><init>()V

    .line 143
    .line 144
    .line 145
    check-cast p0, Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    :goto_96
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_a8

    .line 156
    .line 157
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/a5;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/e;->f(Lcom/google/android/gms/internal/measurement/n;)V

    .line 166
    .line 167
    .line 168
    goto :goto_96

    .line 169
    :cond_a8
    return-object v0

    .line 170
    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 171
    .line 172
    const-string v0, "Invalid value type"

    .line 173
    .line 174
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p0
.end method

.method public static c(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/gms/internal/measurement/w4;
    .registers 12

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_bd

    .line 14
    .line 15
    .line 16
    :try_start_f
    new-instance v1, Ls/j;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, v2}, Ls/j;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_3e

    .line 31
    const-string v5, "HermeticFileOverrides"

    .line 32
    .line 33
    if-eqz v4, :cond_8a

    .line 34
    .line 35
    :try_start_22
    const-string v6, " "

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    array-length v8, v6

    .line 43
    if-eq v8, v7, :cond_40

    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v7, "Invalid: "

    .line 48
    .line 49
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_1a

    .line 63
    :catchall_3e
    move-exception p0

    .line 64
    goto :goto_b4

    .line 65
    :cond_40
    aget-object v4, v6, v2

    .line 66
    .line 67
    new-instance v5, Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v4, 0x1

    .line 73
    aget-object v4, v6, v4

    .line 74
    .line 75
    new-instance v7, Ljava/lang/String;

    .line 76
    .line 77
    invoke-direct {v7, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const/4 v7, 0x2

    .line 85
    aget-object v8, v6, v7

    .line 86
    .line 87
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    check-cast v8, Ljava/lang/String;

    .line 92
    .line 93
    if-nez v8, :cond_76

    .line 94
    .line 95
    aget-object v6, v6, v7

    .line 96
    .line 97
    new-instance v7, Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    const/16 v9, 0x400

    .line 111
    .line 112
    if-lt v6, v9, :cond_73

    .line 113
    .line 114
    if-ne v8, v7, :cond_76

    .line 115
    .line 116
    :cond_73
    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_76
    invoke-virtual {v1, v5}, Ls/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Ls/j;

    .line 124
    .line 125
    if-nez v6, :cond_86

    .line 126
    .line 127
    new-instance v6, Ls/j;

    .line 128
    .line 129
    invoke-direct {v6, v2}, Ls/j;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v5, v6}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :cond_86
    invoke-virtual {v6, v4, v8}, Ls/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto :goto_1a

    .line 139
    :cond_8a
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v3, "Parsed "

    .line 150
    .line 151
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string p1, " for Android package "

    .line 158
    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    new-instance p0, Lcom/google/android/gms/internal/measurement/w4;

    .line 173
    .line 174
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w4;-><init>(Ls/j;)V
    :try_end_b0
    .catchall {:try_start_22 .. :try_end_b0} :catchall_3e

    .line 175
    .line 176
    .line 177
    :try_start_b0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_bd

    .line 178
    .line 179
    .line 180
    return-object p0

    .line 181
    :goto_b4
    :try_start_b4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    .line 182
    .line 183
    .line 184
    goto :goto_bc

    .line 185
    :catchall_b8
    move-exception p1

    .line 186
    :try_start_b9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 187
    .line 188
    .line 189
    :goto_bc
    throw p0
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bd} :catch_bd

    .line 190
    :catch_bd
    move-exception p0

    .line 191
    new-instance p1, Ljava/lang/RuntimeException;

    .line 192
    .line 193
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    throw p1
.end method

.method public static d(Landroid/content/Context;)Lq4/b;
    .registers 6

    .line 1
    sget-object v0, Lq4/a;->a:Lq4/a;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_44

    .line 8
    .line 9
    .line 10
    :try_start_9
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    const-string v3, "phenotype_hermetic"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "overrides.txt"

    .line 20
    .line 21
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_17} :catch_25
    .catchall {:try_start_9 .. :try_end_17} :catchall_44

    .line 22
    .line 23
    .line 24
    :try_start_17
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_23

    .line 29
    .line 30
    new-instance v3, Lq4/c;

    .line 31
    .line 32
    invoke-direct {v3, v2}, Lq4/c;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2e

    .line 36
    :cond_23
    :goto_23
    move-object v3, v0

    .line 37
    goto :goto_2e

    .line 38
    :catch_25
    move-exception v2

    .line 39
    const-string v3, "HermeticFileOverrides"

    .line 40
    .line 41
    const-string v4, "no data dir"

    .line 42
    .line 43
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    goto :goto_23

    .line 47
    :goto_2e
    invoke-virtual {v3}, Lq4/b;->b()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_46

    .line 52
    .line 53
    invoke-virtual {v3}, Lq4/b;->a()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/io/File;

    .line 58
    .line 59
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/a5;->c(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/gms/internal/measurement/w4;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v0, Lq4/c;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lq4/c;-><init>(Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_17 .. :try_end_43} :catchall_44

    .line 66
    .line 67
    .line 68
    goto :goto_46

    .line 69
    :catchall_44
    move-exception p0

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    :goto_46
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :goto_4a
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method

.method public static e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 6

    .line 1
    if-eqz p1, :cond_6a

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6a

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l5;

    .line 14
    .line 15
    if-nez v0, :cond_64

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p3, :cond_49

    .line 19
    .line 20
    const/4 p3, 0x2

    .line 21
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 22
    .line 23
    .line 24
    move p0, v0

    .line 25
    move p3, p0

    .line 26
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge p0, v1, :cond_2f

    .line 31
    .line 32
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 42
    .line 43
    add-int/lit8 p3, p3, 0x1

    .line 44
    .line 45
    add-int/lit8 p0, p0, 0x1

    .line 46
    .line 47
    goto :goto_19

    .line 48
    :cond_2f
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-ge v0, p0, :cond_6a

    .line 56
    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    int-to-byte p0, p0

    .line 68
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->d(B)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_32

    .line 74
    :cond_49
    move p3, v0

    .line 75
    :goto_4a
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-ge p3, v1, :cond_6a

    .line 80
    .line 81
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {p2, p0, v0}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 92
    .line 93
    .line 94
    int-to-byte v1, v1

    .line 95
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/q5;->d(B)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 p3, p3, 0x1

    .line 99
    .line 100
    goto :goto_4a

    .line 101
    :cond_64
    new-instance p0, Ljava/lang/ClassCastException;

    .line 102
    .line 103
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_6a
    return-void
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/z5;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 4
    .line 5
    check-cast p1, Lcom/google/android/gms/internal/measurement/z5;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/measurement/c7;->f:Lcom/google/android/gms/internal/measurement/c7;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/c7;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_11

    .line 16
    .line 17
    goto :goto_70

    .line 18
    :cond_11
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/c7;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_42

    .line 24
    .line 25
    iget v1, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 26
    .line 27
    iget v2, p1, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 28
    .line 29
    add-int/2addr v1, v2

    .line 30
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/c7;->b:[I

    .line 31
    .line 32
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/c7;->b:[I

    .line 37
    .line 38
    iget v5, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 39
    .line 40
    iget v6, p1, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 41
    .line 42
    invoke-static {v4, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/c7;->c:[Ljava/lang/Object;

    .line 46
    .line 47
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    iget-object v5, p1, Lcom/google/android/gms/internal/measurement/c7;->c:[Ljava/lang/Object;

    .line 52
    .line 53
    iget v0, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 54
    .line 55
    iget p1, p1, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 56
    .line 57
    invoke-static {v5, v3, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/google/android/gms/internal/measurement/c7;

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-direct {v0, v1, v2, v4, p1}, Lcom/google/android/gms/internal/measurement/c7;-><init>(I[I[Ljava/lang/Object;Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_70

    .line 67
    :cond_42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/c7;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4c

    .line 75
    .line 76
    goto :goto_70

    .line 77
    :cond_4c
    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/c7;->e:Z

    .line 78
    .line 79
    if-eqz v1, :cond_73

    .line 80
    .line 81
    iget v1, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 82
    .line 83
    iget v2, p1, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 84
    .line 85
    add-int/2addr v1, v2

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/c7;->b(I)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/c7;->b:[I

    .line 90
    .line 91
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/c7;->b:[I

    .line 92
    .line 93
    iget v5, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 94
    .line 95
    iget v6, p1, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 96
    .line 97
    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/c7;->c:[Ljava/lang/Object;

    .line 101
    .line 102
    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/c7;->c:[Ljava/lang/Object;

    .line 103
    .line 104
    iget v5, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 105
    .line 106
    iget p1, p1, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 107
    .line 108
    invoke-static {v2, v3, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    iput v1, v0, Lcom/google/android/gms/internal/measurement/c7;->a:I

    .line 112
    .line 113
    :goto_70
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/z5;->zzb:Lcom/google/android/gms/internal/measurement/c7;

    .line 114
    .line 115
    return-void

    .line 116
    :cond_73
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 117
    .line 118
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    .line 1
    if-eq p0, p1, :cond_d

    .line 2
    .line 3
    if-eqz p0, :cond_b

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_b

    .line 10
    .line 11
    goto :goto_d

    .line 12
    :cond_b
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_d
    :goto_d
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public static h(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 10
    .line 11
    if-eqz v2, :cond_1f

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1e

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-long v3, v3

    .line 23
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_f

    .line 31
    :cond_1e
    return v2

    .line 32
    :cond_1f
    move v2, v1

    .line 33
    :goto_20
    if-ge v1, v0, :cond_35

    .line 34
    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-long v3, v3

    .line 46
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v2, v3

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_20

    .line 54
    :cond_35
    return v2
.end method

.method public static i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_6f

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6f

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/s5;

    .line 14
    .line 15
    if-nez v0, :cond_69

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p3, :cond_4c

    .line 19
    .line 20
    const/4 p3, 0x2

    .line 21
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 22
    .line 23
    .line 24
    move p0, v0

    .line 25
    move p3, p0

    .line 26
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge p0, v1, :cond_2f

    .line 31
    .line 32
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Double;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 42
    .line 43
    add-int/lit8 p3, p3, 0x8

    .line 44
    .line 45
    add-int/lit8 p0, p0, 0x1

    .line 46
    .line 47
    goto :goto_19

    .line 48
    :cond_2f
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-ge v0, p0, :cond_6f

    .line 56
    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Double;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 68
    .line 69
    .line 70
    move-result-wide v1

    .line 71
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/measurement/q5;->h(J)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_32

    .line 77
    :cond_4c
    :goto_4c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-ge v0, p3, :cond_6f

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    check-cast p3, Ljava/lang/Double;

    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    invoke-virtual {p2, p0, v1, v2}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_4c

    .line 106
    :cond_69
    new-instance p0, Ljava/lang/ClassCastException;

    .line 107
    .line 108
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_6f
    return-void
.end method

.method public static j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_9a

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9a

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4b

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 20
    .line 21
    if-eqz p3, :cond_3d

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_2c

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v0, v0

    .line 37
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/2addr p3, v0

    .line 42
    add-int/lit8 p0, p0, 0x1

    .line 43
    .line 44
    goto :goto_1b

    .line 45
    :cond_2c
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 46
    .line 47
    .line 48
    :goto_2f
    iget p0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 49
    .line 50
    if-ge v2, p0, :cond_9a

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->l(I)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_2f

    .line 62
    :cond_3d
    :goto_3d
    iget p3, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 63
    .line 64
    if-ge v2, p3, :cond_9a

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_3d

    .line 76
    :cond_4b
    if-eqz p3, :cond_84

    .line 77
    .line 78
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 79
    .line 80
    .line 81
    move p0, v2

    .line 82
    move p3, p0

    .line 83
    :goto_52
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ge p0, v0, :cond_6b

    .line 88
    .line 89
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-long v0, v0

    .line 100
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    add-int/2addr p3, v0

    .line 105
    add-int/lit8 p0, p0, 0x1

    .line 106
    .line 107
    goto :goto_52

    .line 108
    :cond_6b
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 109
    .line 110
    .line 111
    :goto_6e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-ge v2, p0, :cond_9a

    .line 116
    .line 117
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->l(I)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_6e

    .line 133
    :cond_84
    :goto_84
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-ge v2, p3, :cond_9a

    .line 138
    .line 139
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    check-cast p3, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_84

    .line 155
    :cond_9a
    return-void
.end method

.method public static k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_94

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_94

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_48

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 20
    .line 21
    if-eqz p3, :cond_3a

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_29

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 36
    .line 37
    add-int/lit8 p3, p3, 0x4

    .line 38
    .line 39
    add-int/lit8 p0, p0, 0x1

    .line 40
    .line 41
    goto :goto_1b

    .line 42
    :cond_29
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 43
    .line 44
    .line 45
    :goto_2c
    iget p0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 46
    .line 47
    if-ge v2, p0, :cond_94

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->e(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_2c

    .line 59
    :cond_3a
    :goto_3a
    iget p3, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 60
    .line 61
    if-ge v2, p3, :cond_94

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_3a

    .line 73
    :cond_48
    if-eqz p3, :cond_7e

    .line 74
    .line 75
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 76
    .line 77
    .line 78
    move p0, v2

    .line 79
    move p3, p0

    .line 80
    :goto_4f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ge p0, v0, :cond_65

    .line 85
    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 96
    .line 97
    add-int/lit8 p3, p3, 0x4

    .line 98
    .line 99
    add-int/lit8 p0, p0, 0x1

    .line 100
    .line 101
    goto :goto_4f

    .line 102
    :cond_65
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 103
    .line 104
    .line 105
    :goto_68
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-ge v2, p0, :cond_94

    .line 110
    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->e(I)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_68

    .line 127
    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-ge v2, p3, :cond_94

    .line 132
    .line 133
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    check-cast p3, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_7e

    .line 149
    :cond_94
    return-void
.end method

.method public static l(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 10
    .line 11
    if-eqz v2, :cond_1f

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1e

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    int-to-long v3, v3

    .line 23
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    add-int/2addr v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_f

    .line 31
    :cond_1e
    return v2

    .line 32
    :cond_1f
    move v2, v1

    .line 33
    :goto_20
    if-ge v1, v0, :cond_35

    .line 34
    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    int-to-long v3, v3

    .line 46
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    add-int/2addr v2, v3

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_20

    .line 54
    :cond_35
    return v2
.end method

.method public static m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_94

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_94

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_48

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 20
    .line 21
    if-eqz p3, :cond_3a

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_29

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 36
    .line 37
    add-int/lit8 p3, p3, 0x8

    .line 38
    .line 39
    add-int/lit8 p0, p0, 0x1

    .line 40
    .line 41
    goto :goto_1b

    .line 42
    :cond_29
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 43
    .line 44
    .line 45
    :goto_2c
    iget p0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 46
    .line 47
    if-ge v2, p0, :cond_94

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->h(J)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_2c

    .line 59
    :cond_3a
    :goto_3a
    iget p3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 60
    .line 61
    if-ge v2, p3, :cond_94

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_3a

    .line 73
    :cond_48
    if-eqz p3, :cond_7e

    .line 74
    .line 75
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 76
    .line 77
    .line 78
    move p0, v2

    .line 79
    move p3, p0

    .line 80
    :goto_4f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ge p0, v0, :cond_65

    .line 85
    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 96
    .line 97
    add-int/lit8 p3, p3, 0x8

    .line 98
    .line 99
    add-int/lit8 p0, p0, 0x1

    .line 100
    .line 101
    goto :goto_4f

    .line 102
    :cond_65
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 103
    .line 104
    .line 105
    :goto_68
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-ge v2, p0, :cond_94

    .line 110
    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Long;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->h(J)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_68

    .line 127
    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-ge v2, p3, :cond_94

    .line 132
    .line 133
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    check-cast p3, Ljava/lang/Long;

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_7e

    .line 149
    :cond_94
    return-void
.end method

.method public static n(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/n6;

    .line 10
    .line 11
    if-eqz v2, :cond_1e

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/2addr v2, v3

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_f

    .line 30
    :cond_1d
    return v2

    .line 31
    :cond_1e
    move v2, v1

    .line 32
    :goto_1f
    if-ge v1, v0, :cond_33

    .line 33
    .line 34
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-int/2addr v2, v3

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1f

    .line 52
    :cond_33
    return v2
.end method

.method public static o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 6

    .line 1
    if-eqz p1, :cond_6f

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6f

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/x5;

    .line 14
    .line 15
    if-nez v0, :cond_69

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p3, :cond_4c

    .line 19
    .line 20
    const/4 p3, 0x2

    .line 21
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 22
    .line 23
    .line 24
    move p0, v0

    .line 25
    move p3, p0

    .line 26
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-ge p0, v1, :cond_2f

    .line 31
    .line 32
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Float;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    sget-object v1, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 42
    .line 43
    add-int/lit8 p3, p3, 0x4

    .line 44
    .line 45
    add-int/lit8 p0, p0, 0x1

    .line 46
    .line 47
    goto :goto_19

    .line 48
    :cond_2f
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 49
    .line 50
    .line 51
    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-ge v0, p0, :cond_6f

    .line 56
    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/lang/Float;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->e(I)V

    .line 72
    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_32

    .line 77
    :cond_4c
    :goto_4c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-ge v0, p3, :cond_6f

    .line 82
    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    check-cast p3, Ljava/lang/Float;

    .line 88
    .line 89
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_4c

    .line 106
    :cond_69
    new-instance p0, Ljava/lang/ClassCastException;

    .line 107
    .line 108
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_6f
    return-void
.end method

.method public static p(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 10
    .line 11
    if-eqz v2, :cond_23

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v1, v0, :cond_22

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    shl-int/lit8 v4, v3, 0x1

    .line 23
    .line 24
    shr-int/lit8 v3, v3, 0x1f

    .line 25
    .line 26
    xor-int/2addr v3, v4

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    add-int/2addr v2, v3

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_f

    .line 35
    :cond_22
    return v2

    .line 36
    :cond_23
    move v2, v1

    .line 37
    :goto_24
    if-ge v1, v0, :cond_3d

    .line 38
    .line 39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    shl-int/lit8 v4, v3, 0x1

    .line 50
    .line 51
    shr-int/lit8 v3, v3, 0x1f

    .line 52
    .line 53
    xor-int/2addr v3, v4

    .line 54
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    add-int/2addr v2, v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_24

    .line 62
    :cond_3d
    return v2
.end method

.method public static q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_9a

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_9a

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4b

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 20
    .line 21
    if-eqz p3, :cond_3d

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_2c

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-long v0, v0

    .line 37
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/2addr p3, v0

    .line 42
    add-int/lit8 p0, p0, 0x1

    .line 43
    .line 44
    goto :goto_1b

    .line 45
    :cond_2c
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 46
    .line 47
    .line 48
    :goto_2f
    iget p0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 49
    .line 50
    if-ge v2, p0, :cond_9a

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->l(I)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_2f

    .line 62
    :cond_3d
    :goto_3d
    iget p3, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 63
    .line 64
    if-ge v2, p3, :cond_9a

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_3d

    .line 76
    :cond_4b
    if-eqz p3, :cond_84

    .line 77
    .line 78
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 79
    .line 80
    .line 81
    move p0, v2

    .line 82
    move p3, p0

    .line 83
    :goto_52
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ge p0, v0, :cond_6b

    .line 88
    .line 89
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-long v0, v0

    .line 100
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    add-int/2addr p3, v0

    .line 105
    add-int/lit8 p0, p0, 0x1

    .line 106
    .line 107
    goto :goto_52

    .line 108
    :cond_6b
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 109
    .line 110
    .line 111
    :goto_6e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-ge v2, p0, :cond_9a

    .line 116
    .line 117
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->l(I)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_6e

    .line 133
    :cond_84
    :goto_84
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    if-ge v2, p3, :cond_9a

    .line 138
    .line 139
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p3

    .line 143
    check-cast p3, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result p3

    .line 149
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->m(II)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    .line 154
    goto :goto_84

    .line 155
    :cond_9a
    return-void
.end method

.method public static r(Ljava/util/List;)I
    .registers 10

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/n6;

    .line 10
    .line 11
    const/16 v3, 0x3f

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v2, :cond_25

    .line 15
    .line 16
    check-cast p0, Lcom/google/android/gms/internal/measurement/n6;

    .line 17
    .line 18
    move v2, v1

    .line 19
    :goto_12
    if-ge v1, v0, :cond_24

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    shl-long v7, v5, v4

    .line 26
    .line 27
    shr-long/2addr v5, v3

    .line 28
    xor-long/2addr v5, v7

    .line 29
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    add-int/2addr v2, v5

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_12

    .line 37
    :cond_24
    return v2

    .line 38
    :cond_25
    move v2, v1

    .line 39
    :goto_26
    if-ge v1, v0, :cond_3e

    .line 40
    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    shl-long v7, v5, v4

    .line 52
    .line 53
    shr-long/2addr v5, v3

    .line 54
    xor-long/2addr v5, v7

    .line 55
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    add-int/2addr v2, v5

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_26

    .line 63
    :cond_3e
    return v2
.end method

.method public static s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_98

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_98

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4a

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 20
    .line 21
    if-eqz p3, :cond_3c

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_2b

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr p3, v0

    .line 41
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    iget p0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 48
    .line 49
    if-ge v2, p0, :cond_98

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_2e

    .line 61
    :cond_3c
    :goto_3c
    iget p3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 62
    .line 63
    if-ge v2, p3, :cond_98

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_3c

    .line 75
    :cond_4a
    if-eqz p3, :cond_82

    .line 76
    .line 77
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 78
    .line 79
    .line 80
    move p0, v2

    .line 81
    move p3, p0

    .line 82
    :goto_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ge p0, v0, :cond_69

    .line 87
    .line 88
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr p3, v0

    .line 103
    add-int/lit8 p0, p0, 0x1

    .line 104
    .line 105
    goto :goto_51

    .line 106
    :cond_69
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 107
    .line 108
    .line 109
    :goto_6c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-ge v2, p0, :cond_98

    .line 114
    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_6c

    .line 131
    :cond_82
    :goto_82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-ge v2, p3, :cond_98

    .line 136
    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    check-cast p3, Ljava/lang/Long;

    .line 142
    .line 143
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_82

    .line 153
    :cond_98
    return-void
.end method

.method public static t(Ljava/util/List;)I
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 10
    .line 11
    if-eqz v2, :cond_1e

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/2addr v2, v3

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_f

    .line 30
    :cond_1d
    return v2

    .line 31
    :cond_1e
    move v2, v1

    .line 32
    :goto_1f
    if-ge v1, v0, :cond_33

    .line 33
    .line 34
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-int/2addr v2, v3

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1f

    .line 52
    :cond_33
    return v2
.end method

.method public static u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_94

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_94

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_48

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 20
    .line 21
    if-eqz p3, :cond_3a

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_29

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 36
    .line 37
    add-int/lit8 p3, p3, 0x4

    .line 38
    .line 39
    add-int/lit8 p0, p0, 0x1

    .line 40
    .line 41
    goto :goto_1b

    .line 42
    :cond_29
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 43
    .line 44
    .line 45
    :goto_2c
    iget p0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 46
    .line 47
    if-ge v2, p0, :cond_94

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->e(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_2c

    .line 59
    :cond_3a
    :goto_3a
    iget p3, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 60
    .line 61
    if-ge v2, p3, :cond_94

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_3a

    .line 73
    :cond_48
    if-eqz p3, :cond_7e

    .line 74
    .line 75
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 76
    .line 77
    .line 78
    move p0, v2

    .line 79
    move p3, p0

    .line 80
    :goto_4f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ge p0, v0, :cond_65

    .line 85
    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 96
    .line 97
    add-int/lit8 p3, p3, 0x4

    .line 98
    .line 99
    add-int/lit8 p0, p0, 0x1

    .line 100
    .line 101
    goto :goto_4f

    .line 102
    :cond_65
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 103
    .line 104
    .line 105
    :goto_68
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-ge v2, p0, :cond_94

    .line 110
    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->e(I)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_68

    .line 127
    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-ge v2, p3, :cond_94

    .line 132
    .line 133
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    check-cast p3, Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->f(II)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_7e

    .line 149
    :cond_94
    return-void
.end method

.method public static v(Ljava/util/List;)I
    .registers 6

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    return v1

    .line 9
    :cond_8
    instance-of v2, p0, Lcom/google/android/gms/internal/measurement/n6;

    .line 10
    .line 11
    if-eqz v2, :cond_1e

    .line 12
    .line 13
    check-cast p0, Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    add-int/2addr v2, v3

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_f

    .line 30
    :cond_1d
    return v2

    .line 31
    :cond_1e
    move v2, v1

    .line 32
    :goto_1f
    if-ge v1, v0, :cond_33

    .line 33
    .line 34
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    add-int/2addr v2, v3

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_1f

    .line 52
    :cond_33
    return v2
.end method

.method public static w(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_94

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_94

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_48

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 20
    .line 21
    if-eqz p3, :cond_3a

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_29

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 36
    .line 37
    add-int/lit8 p3, p3, 0x8

    .line 38
    .line 39
    add-int/lit8 p0, p0, 0x1

    .line 40
    .line 41
    goto :goto_1b

    .line 42
    :cond_29
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 43
    .line 44
    .line 45
    :goto_2c
    iget p0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 46
    .line 47
    if-ge v2, p0, :cond_94

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->h(J)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_2c

    .line 59
    :cond_3a
    :goto_3a
    iget p3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 60
    .line 61
    if-ge v2, p3, :cond_94

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_3a

    .line 73
    :cond_48
    if-eqz p3, :cond_7e

    .line 74
    .line 75
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 76
    .line 77
    .line 78
    move p0, v2

    .line 79
    move p3, p0

    .line 80
    :goto_4f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-ge p0, v0, :cond_65

    .line 85
    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Long;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/google/android/gms/internal/measurement/q5;->f:Ljava/util/logging/Logger;

    .line 96
    .line 97
    add-int/lit8 p3, p3, 0x8

    .line 98
    .line 99
    add-int/lit8 p0, p0, 0x1

    .line 100
    .line 101
    goto :goto_4f

    .line 102
    :cond_65
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 103
    .line 104
    .line 105
    :goto_68
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-ge v2, p0, :cond_94

    .line 110
    .line 111
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    check-cast p0, Ljava/lang/Long;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->h(J)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_68

    .line 127
    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-ge v2, p3, :cond_94

    .line 132
    .line 133
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    check-cast p3, Ljava/lang/Long;

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    invoke-virtual {p2, p0, v0, v1}, Lcom/google/android/gms/internal/measurement/q5;->g(IJ)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_7e

    .line 149
    :cond_94
    return-void
.end method

.method public static x(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_b6

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b6

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_59

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 20
    .line 21
    if-eqz p3, :cond_46

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_30

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    shl-int/lit8 v1, v0, 0x1

    .line 37
    .line 38
    shr-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    xor-int/2addr v0, v1

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    add-int/2addr p3, v0

    .line 46
    add-int/lit8 p0, p0, 0x1

    .line 47
    .line 48
    goto :goto_1b

    .line 49
    :cond_30
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 50
    .line 51
    .line 52
    :goto_33
    iget p0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 53
    .line 54
    if-ge v2, p0, :cond_b6

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    shl-int/lit8 p3, p0, 0x1

    .line 61
    .line 62
    shr-int/lit8 p0, p0, 0x1f

    .line 63
    .line 64
    xor-int/2addr p0, p3

    .line 65
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_33

    .line 71
    :cond_46
    :goto_46
    iget p3, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 72
    .line 73
    if-ge v2, p3, :cond_b6

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    shl-int/lit8 v0, p3, 0x1

    .line 80
    .line 81
    shr-int/lit8 p3, p3, 0x1f

    .line 82
    .line 83
    xor-int/2addr p3, v0

    .line 84
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_46

    .line 90
    :cond_59
    if-eqz p3, :cond_9b

    .line 91
    .line 92
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 93
    .line 94
    .line 95
    move p0, v2

    .line 96
    move p3, p0

    .line 97
    :goto_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ge p0, v0, :cond_7d

    .line 102
    .line 103
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    shl-int/lit8 v1, v0, 0x1

    .line 114
    .line 115
    shr-int/lit8 v0, v0, 0x1f

    .line 116
    .line 117
    xor-int/2addr v0, v1

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    add-int/2addr p3, v0

    .line 123
    add-int/lit8 p0, p0, 0x1

    .line 124
    .line 125
    goto :goto_60

    .line 126
    :cond_7d
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 127
    .line 128
    .line 129
    :goto_80
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-ge v2, p0, :cond_b6

    .line 134
    .line 135
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    check-cast p0, Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    shl-int/lit8 p3, p0, 0x1

    .line 146
    .line 147
    shr-int/lit8 p0, p0, 0x1f

    .line 148
    .line 149
    xor-int/2addr p0, p3

    .line 150
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    .line 155
    goto :goto_80

    .line 156
    :cond_9b
    :goto_9b
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    if-ge v2, p3, :cond_b6

    .line 161
    .line 162
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    check-cast p3, Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    shl-int/lit8 v0, p3, 0x1

    .line 173
    .line 174
    shr-int/lit8 p3, p3, 0x1f

    .line 175
    .line 176
    xor-int/2addr p3, v0

    .line 177
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 178
    .line 179
    .line 180
    add-int/lit8 v2, v2, 0x1

    .line 181
    .line 182
    goto :goto_9b

    .line 183
    :cond_b6
    return-void
.end method

.method public static y(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 13

    .line 1
    if-eqz p1, :cond_b3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b3

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 14
    .line 15
    const/16 v1, 0x3f

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v0, :cond_59

    .line 21
    .line 22
    check-cast p1, Lcom/google/android/gms/internal/measurement/n6;

    .line 23
    .line 24
    if-eqz p3, :cond_47

    .line 25
    .line 26
    invoke-virtual {p2, p0, v3}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 27
    .line 28
    .line 29
    move p0, v4

    .line 30
    move p3, p0

    .line 31
    :goto_1e
    iget v0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 32
    .line 33
    if-ge p0, v0, :cond_32

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    shl-long v7, v5, v2

    .line 40
    .line 41
    shr-long/2addr v5, v1

    .line 42
    xor-long/2addr v5, v7

    .line 43
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    add-int/2addr p3, v0

    .line 48
    add-int/lit8 p0, p0, 0x1

    .line 49
    .line 50
    goto :goto_1e

    .line 51
    :cond_32
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 52
    .line 53
    .line 54
    :goto_35
    iget p0, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 55
    .line 56
    if-ge v4, p0, :cond_b3

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    shl-long v7, v5, v2

    .line 63
    .line 64
    shr-long/2addr v5, v1

    .line 65
    xor-long/2addr v5, v7

    .line 66
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_35

    .line 72
    :cond_47
    :goto_47
    iget p3, p1, Lcom/google/android/gms/internal/measurement/n6;->c:I

    .line 73
    .line 74
    if-ge v4, p3, :cond_b3

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/measurement/n6;->b(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v5

    .line 80
    shl-long v7, v5, v2

    .line 81
    .line 82
    shr-long/2addr v5, v1

    .line 83
    xor-long/2addr v5, v7

    .line 84
    invoke-virtual {p2, p0, v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 85
    .line 86
    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    goto :goto_47

    .line 90
    :cond_59
    if-eqz p3, :cond_99

    .line 91
    .line 92
    invoke-virtual {p2, p0, v3}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 93
    .line 94
    .line 95
    move p0, v4

    .line 96
    move p3, p0

    .line 97
    :goto_60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-ge p0, v0, :cond_7c

    .line 102
    .line 103
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    shl-long v7, v5, v2

    .line 114
    .line 115
    shr-long/2addr v5, v1

    .line 116
    xor-long/2addr v5, v7

    .line 117
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->u(J)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr p3, v0

    .line 122
    add-int/lit8 p0, p0, 0x1

    .line 123
    .line 124
    goto :goto_60

    .line 125
    :cond_7c
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 126
    .line 127
    .line 128
    :goto_7f
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-ge v4, p0, :cond_b3

    .line 133
    .line 134
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    check-cast p0, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 141
    .line 142
    .line 143
    move-result-wide v5

    .line 144
    shl-long v7, v5, v2

    .line 145
    .line 146
    shr-long/2addr v5, v1

    .line 147
    xor-long/2addr v5, v7

    .line 148
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->o(J)V

    .line 149
    .line 150
    .line 151
    add-int/lit8 v4, v4, 0x1

    .line 152
    .line 153
    goto :goto_7f

    .line 154
    :cond_99
    :goto_99
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    if-ge v4, p3, :cond_b3

    .line 159
    .line 160
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    check-cast p3, Ljava/lang/Long;

    .line 165
    .line 166
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 167
    .line 168
    .line 169
    move-result-wide v5

    .line 170
    shl-long v7, v5, v2

    .line 171
    .line 172
    shr-long/2addr v5, v1

    .line 173
    xor-long/2addr v5, v7

    .line 174
    invoke-virtual {p2, p0, v5, v6}, Lcom/google/android/gms/internal/measurement/q5;->n(IJ)V

    .line 175
    .line 176
    .line 177
    add-int/lit8 v4, v4, 0x1

    .line 178
    .line 179
    goto :goto_99

    .line 180
    :cond_b3
    return-void
.end method

.method public static z(ILjava/util/List;Lcom/google/android/gms/internal/measurement/o6;Z)V
    .registers 7

    .line 1
    if-eqz p1, :cond_98

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_98

    .line 8
    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/o6;->a:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p2, Lcom/google/android/gms/internal/measurement/q5;

    .line 12
    .line 13
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_4a

    .line 18
    .line 19
    check-cast p1, Lcom/google/android/gms/internal/measurement/c6;

    .line 20
    .line 21
    if-eqz p3, :cond_3c

    .line 22
    .line 23
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 24
    .line 25
    .line 26
    move p0, v2

    .line 27
    move p3, p0

    .line 28
    :goto_1b
    iget v0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 29
    .line 30
    if-ge p0, v0, :cond_2b

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr p3, v0

    .line 41
    add-int/lit8 p0, p0, 0x1

    .line 42
    .line 43
    goto :goto_1b

    .line 44
    :cond_2b
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 45
    .line 46
    .line 47
    :goto_2e
    iget p0, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 48
    .line 49
    if-ge v2, p0, :cond_98

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_2e

    .line 61
    :cond_3c
    :goto_3c
    iget p3, p1, Lcom/google/android/gms/internal/measurement/c6;->c:I

    .line 62
    .line 63
    if-ge v2, p3, :cond_98

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/c6;->a(I)I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_3c

    .line 75
    :cond_4a
    if-eqz p3, :cond_82

    .line 76
    .line 77
    invoke-virtual {p2, p0, v1}, Lcom/google/android/gms/internal/measurement/q5;->r(II)V

    .line 78
    .line 79
    .line 80
    move p0, v2

    .line 81
    move p3, p0

    .line 82
    :goto_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ge p0, v0, :cond_69

    .line 87
    .line 88
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/q5;->w(I)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    add-int/2addr p3, v0

    .line 103
    add-int/lit8 p0, p0, 0x1

    .line 104
    .line 105
    goto :goto_51

    .line 106
    :cond_69
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 107
    .line 108
    .line 109
    :goto_6c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    if-ge v2, p0, :cond_98

    .line 114
    .line 115
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/measurement/q5;->q(I)V

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_6c

    .line 131
    :cond_82
    :goto_82
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-ge v2, p3, :cond_98

    .line 136
    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p3

    .line 141
    check-cast p3, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result p3

    .line 147
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/internal/measurement/q5;->t(II)V

    .line 148
    .line 149
    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 151
    .line 152
    goto :goto_82

    .line 153
    :cond_98
    return-void
.end method
