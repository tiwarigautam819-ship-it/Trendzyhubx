###### Class org.apache.cordova.g0 (org.apache.cordova.g0)
.class public final Lorg/apache/cordova/g0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/apache/cordova/m0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lorg/apache/cordova/g0;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/apache/cordova/g0;->b:Lorg/apache/cordova/m0;

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/m0;Ljava/lang/String;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    .line 6
    iput-object p2, p0, Lorg/apache/cordova/g0;->a:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lorg/apache/cordova/g0;->b:Lorg/apache/cordova/m0;

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 8
    throw p1
.end method

.method public static c(Lorg/apache/cordova/m0;)I
    .registers 6

    .line 1
    iget v0, p0, Lorg/apache/cordova/m0;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/cordova/m0;->f:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_5a

    .line 7
    .line 8
    .line 9
    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :pswitch_11
    const/4 p0, 0x0

    .line 19
    move v0, v2

    .line 20
    :goto_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge p0, v3, :cond_31

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lorg/apache/cordova/m0;

    .line 31
    .line 32
    invoke-static {v3}, Lorg/apache/cordova/g0;->c(Lorg/apache/cordova/m0;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    add-int/2addr v4, v2

    .line 45
    add-int/2addr v4, v3

    .line 46
    add-int/2addr v0, v4

    .line 47
    add-int/lit8 p0, p0, 0x1

    .line 48
    .line 49
    goto :goto_13

    .line 50
    :cond_31
    return v0

    .line 51
    :pswitch_32
    invoke-virtual {p0}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr p0, v2

    .line 60
    return p0

    .line 61
    :pswitch_3c
    invoke-virtual {p0}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    add-int/2addr p0, v2

    .line 70
    return p0

    .line 71
    :pswitch_46
    return v2

    .line 72
    :pswitch_47
    invoke-virtual {p0}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    add-int/2addr p0, v2

    .line 81
    return p0

    .line 82
    :pswitch_51
    iget-object p0, p0, Lorg/apache/cordova/m0;->d:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    add-int/2addr p0, v2

    .line 89
    return p0

    .line 90
    nop

    .line 91
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_51
        :pswitch_8
        :pswitch_47
        :pswitch_46
        :pswitch_46
        :pswitch_3c
        :pswitch_32
        :pswitch_11
    .end packed-switch
.end method

.method public static e(Ljava/lang/StringBuilder;Lorg/apache/cordova/m0;)V
    .registers 5

    .line 1
    iget v0, p1, Lorg/apache/cordova/m0;->b:I

    .line 2
    .line 3
    iget-object v1, p1, Lorg/apache/cordova/m0;->f:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_7c

    .line 7
    .line 8
    .line 9
    :pswitch_8
    invoke-virtual {p1}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_10
    const/16 p1, 0x4d

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-ge v2, p1, :cond_37

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/apache/cordova/m0;

    .line 33
    .line 34
    invoke-static {p1}, Lorg/apache/cordova/g0;->c(Lorg/apache/cordova/m0;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x20

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {p0, p1}, Lorg/apache/cordova/g0;->e(Ljava/lang/StringBuilder;Lorg/apache/cordova/m0;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_15

    .line 56
    :cond_37
    return-void

    .line 57
    :pswitch_38
    const/16 v0, 0x53

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_45
    const/16 v0, 0x41

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :pswitch_52
    const/16 p1, 0x4e

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_58
    invoke-virtual {p1}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_64
    const/16 v0, 0x6e

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_71
    const/16 v0, 0x73

    .line 115
    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object p1, p1, Lorg/apache/cordova/m0;->d:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_71
        :pswitch_8
        :pswitch_64
        :pswitch_58
        :pswitch_52
        :pswitch_45
        :pswitch_38
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/g0;->b:Lorg/apache/cordova/m0;

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/cordova/m0;->b:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/apache/cordova/m0;->f:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    if-eq v1, v3, :cond_61

    .line 9
    .line 10
    const/4 v3, 0x6

    .line 11
    const-string v4, "\')"

    .line 12
    .line 13
    if-eq v1, v3, :cond_51

    .line 14
    .line 15
    const/4 v3, 0x7

    .line 16
    if-eq v1, v3, :cond_41

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    if-eq v1, v3, :cond_1d

    .line 21
    .line 22
    invoke-virtual {v0}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x0

    .line 35
    :goto_22
    if-ge v1, v0, :cond_40

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lorg/apache/cordova/m0;

    .line 42
    .line 43
    new-instance v4, Lorg/apache/cordova/g0;

    .line 44
    .line 45
    iget-object v5, p0, Lorg/apache/cordova/g0;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v4, v3, v5}, Lorg/apache/cordova/g0;-><init>(Lorg/apache/cordova/m0;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p1}, Lorg/apache/cordova/g0;->a(Ljava/lang/StringBuilder;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v3, v0, -0x1

    .line 54
    .line 55
    if-ge v1, v3, :cond_3d

    .line 56
    .line 57
    const-string v3, ","

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_22

    .line 65
    :cond_40
    return-void

    .line 66
    :cond_41
    const-string v1, "atob(\'"

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_51
    const-string v1, "cordova.require(\'cordova/base64\').toArrayBuffer(\'"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lorg/apache/cordova/m0;->a()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_61
    const-string v0, "null"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final b()I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/g0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/cordova/g0;->b:Lorg/apache/cordova/m0;

    .line 4
    .line 5
    if-nez v1, :cond_d

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_d
    iget v2, v1, Lorg/apache/cordova/m0;->a:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, 0x3

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v2

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    invoke-static {v1}, Lorg/apache/cordova/g0;->c(Lorg/apache/cordova/m0;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    return v1
.end method

.method public final d(Ljava/lang/StringBuilder;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/apache/cordova/g0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/apache/cordova/g0;->b:Lorg/apache/cordova/m0;

    .line 4
    .line 5
    if-nez v1, :cond_a

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    iget v2, v1, Lorg/apache/cordova/m0;->a:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v2, v3, :cond_13

    .line 15
    .line 16
    if-nez v2, :cond_12

    .line 17
    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v3, 0x0

    .line 20
    :cond_13
    :goto_13
    const-string v4, "cordova.callbackFromNative(\'"

    .line 21
    .line 22
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "\',"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ","

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ",["

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lorg/apache/cordova/g0;->a(Ljava/lang/StringBuilder;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "],"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-boolean v0, v1, Lorg/apache/cordova/m0;->c:Z

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ");"

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    return-void
.end method
