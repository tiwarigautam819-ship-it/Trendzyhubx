###### Class com.engagelab.privates.common.utils.Guard (com.engagelab.privates.common.utils.Guard)
.class public Lcom/engagelab/privates/common/utils/Guard;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static guard([B)[B
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x6

    .line 3
    :try_start_2
    new-array v2, v1, [B

    .line 4
    .line 5
    fill-array-data v2, :array_20

    .line 6
    .line 7
    .line 8
    array-length v3, p0

    .line 9
    new-array v3, v3, [B

    .line 10
    .line 11
    move v4, v0

    .line 12
    :goto_b
    array-length v5, p0

    .line 13
    if-ge v4, v5, :cond_1c

    .line 14
    .line 15
    aget-byte v5, p0, v4

    .line 16
    .line 17
    array-length v6, p0

    .line 18
    add-int/2addr v6, v4

    .line 19
    rem-int/2addr v6, v1

    .line 20
    aget-byte v6, v2, v6

    .line 21
    .line 22
    xor-int/2addr v5, v6

    .line 23
    int-to-byte v5, v5

    .line 24
    aput-byte v5, v3, v4
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1d

    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    goto :goto_b

    .line 29
    :cond_1c
    return-object v3

    .line 30
    :catchall_1d
    new-array p0, v0, [B

    .line 31
    .line 32
    return-object p0

    .line 33
    :array_20
    .array-data 1
        0x20t
        0x19t
        0x8t
        0x16t
        0x11t
        0x30t
    .end array-data
.end method

.method public static string([B)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/engagelab/privates/common/utils/Guard;->guard([B)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static test(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-string v0, "xxx"

    .line 2
    .line 3
    const-string v1, "reverse="

    .line 4
    .line 5
    const-string v2, "public static final String "

    .line 6
    .line 7
    const-string v3, "guard="

    .line 8
    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, ""

    .line 14
    .line 15
    if-eqz v4, :cond_11

    .line 16
    .line 17
    return-object v5

    .line 18
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Guard;->guard([B)[B

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " =Guard.string(new byte[]"

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, "["

    .line 63
    .line 64
    const-string v7, "{"

    .line 65
    .line 66
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v6, "]"

    .line 71
    .line 72
    const-string v7, "});"

    .line 73
    .line 74
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, "//"

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-static {v4}, Lcom/engagelab/privates/common/utils/Guard;->guard([B)[B

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    new-instance v3, Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_11 .. :try_end_6f} :catchall_70

    .line 110
    .line 111
    .line 112
    return-object p0

    .line 113
    :catchall_70
    move-exception p0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "e:"

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    return-object v5
.end method
