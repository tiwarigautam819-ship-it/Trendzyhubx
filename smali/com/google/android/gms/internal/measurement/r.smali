###### Class com.google.android.gms.internal.measurement.r (com.google.android.gms.internal.measurement.r)
.class public final Lcom/google/android/gms/internal/measurement/r;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/r;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/r;->c:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3a

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/measurement/e;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ge v0, v1, :cond_13

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    return v0

    .line 22
    :pswitch_15
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v0, v1, :cond_25

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 v0, 0x0

    .line 39
    :goto_26
    return v0

    .line 40
    :pswitch_27
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-ge v0, v1, :cond_37

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    const/4 v0, 0x0

    .line 57
    :goto_38
    return v0

    .line 58
    nop

    .line 59
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_15
    .end packed-switch
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_78

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/google/android/gms/internal/measurement/e;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e;->g()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v0, v2, :cond_1c

    .line 17
    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 19
    .line 20
    add-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    iput v2, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/e;->e(I)Lcom/google/android/gms/internal/measurement/n;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_1c
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 30
    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 32
    .line 33
    const-string v2, "Out of bounds index: "

    .line 34
    .line 35
    invoke-static {v1, v2}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :pswitch_2a
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 44
    .line 45
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-ge v0, v1, :cond_48

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 58
    .line 59
    iget v1, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 60
    .line 61
    add-int/lit8 v2, v1, 0x1

    .line 62
    .line 63
    iput v2, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_48
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :pswitch_4e
    iget v0, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/r;->c:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    .line 84
    .line 85
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-ge v0, v2, :cond_72

    .line 92
    .line 93
    new-instance v0, Lcom/google/android/gms/internal/measurement/p;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/p;->a:Ljava/lang/String;

    .line 96
    .line 97
    iget v2, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 98
    .line 99
    add-int/lit8 v3, v2, 0x1

    .line 100
    .line 101
    iput v3, p0, Lcom/google/android/gms/internal/measurement/r;->b:I

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/p;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_72
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_2a
    .end packed-switch
.end method
