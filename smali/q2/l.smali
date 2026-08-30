###### Class q2.l (q2.l)
.class public abstract Lq2/l;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v5, "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3"

    .line 2
    .line 3
    const-string v6, "c56fb7d591ba6704df047fd98f535372fea00211"

    .line 4
    .line 5
    const-string v0, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    .line 6
    .line 7
    const-string v1, "cc2751449a350f668590264ed76692694a80308a"

    .line 8
    .line 9
    const-string v2, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    .line 10
    .line 11
    const-string v3, "df6b721c8b4d3b6eb44c861d4415007e5a35fc95"

    .line 12
    .line 13
    const-string v4, "9b8f518b086098de3d77736f9458a3d2f6f95a37"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Li2/t;->i([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lq2/l;->a:Ljava/util/HashSet;

    .line 24
    .line 25
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    .line 1
    const-string v0, "packageInfo.signatures"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {v1, p0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15
    .line 16
    const-string v3, "brand"

    .line 17
    .line 18
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "generic"

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-static {v1, v3, v4}, Lk7/o;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_23

    .line 29
    .line 30
    and-int/lit8 v1, v2, 0x2

    .line 31
    .line 32
    if-eqz v1, :cond_23

    .line 33
    .line 34
    goto/16 :goto_97

    .line 35
    .line 36
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/16 v1, 0x40

    .line 41
    .line 42
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 47
    .line 48
    if-eqz p0, :cond_99

    .line 49
    .line 50
    array-length p1, p0

    .line 51
    if-nez p1, :cond_35

    .line 52
    .line 53
    goto :goto_99

    .line 54
    :cond_35
    invoke-static {v0, p0}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    array-length p1, p0

    .line 58
    move v0, v4

    .line 59
    :goto_3a
    if-ge v0, p1, :cond_97

    .line 60
    .line 61
    aget-object v1, p0, v0

    .line 62
    .line 63
    sget-object v2, Lq2/l;->a:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v3, "it.toByteArray()"

    .line 70
    .line 71
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string v3, "SHA-1"
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_4b} :catch_99

    .line 75
    .line 76
    :try_start_4b
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 77
    .line 78
    .line 79
    move-result-object v3
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4b .. :try_end_4f} :catch_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_4f} :catch_99

    .line 80
    :try_start_4f
    const-string v5, "hash"

    .line 81
    .line 82
    invoke-static {v5, v3}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v5, "digest"

    .line 98
    .line 99
    invoke-static {v5, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    array-length v5, v1

    .line 103
    move v6, v4

    .line 104
    :goto_67
    if-ge v6, v5, :cond_82

    .line 105
    .line 106
    aget-byte v7, v1, v6

    .line 107
    .line 108
    shr-int/lit8 v8, v7, 0x4

    .line 109
    .line 110
    and-int/lit8 v8, v8, 0xf

    .line 111
    .line 112
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    and-int/lit8 v7, v7, 0xf

    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    add-int/lit8 v6, v6, 0x1

    .line 129
    .line 130
    goto :goto_67

    .line 131
    :cond_82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v3, "builder.toString()"

    .line 136
    .line 137
    invoke-static {v3, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_8d

    .line 141
    :catch_8c
    const/4 v1, 0x0

    .line 142
    :goto_8d
    invoke-static {v2, v1}, Ls6/g;->p(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_91} :catch_99

    .line 146
    if-nez v1, :cond_94

    .line 147
    .line 148
    goto :goto_99

    .line 149
    :cond_94
    add-int/lit8 v0, v0, 0x1

    .line 150
    .line 151
    goto :goto_3a

    .line 152
    :cond_97
    :goto_97
    const/4 p0, 0x1

    .line 153
    return p0

    .line 154
    :catch_99
    :cond_99
    :goto_99
    return v4
.end method
