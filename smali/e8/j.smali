###### Class e8.j (e8.j)
.class public Le8/j;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final d:Le8/j;


# instance fields
.field public final a:[B

.field public transient b:I

.field public transient c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Le8/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-direct {v0, v1}, Le8/j;-><init>([B)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Le8/j;->d:Le8/j;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Le8/j;->a:[B

    .line 10
    .line 11
    return-void
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_33

    .line 6
    .line 7
    new-array v1, v0, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_9
    if-ge v2, v0, :cond_1c

    .line 11
    .line 12
    sub-int v3, v0, v2

    .line 13
    .line 14
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, -0x1

    .line 19
    if-eq v3, v4, :cond_16

    .line 20
    .line 21
    add-int/2addr v2, v3

    .line 22
    goto :goto_9

    .line 23
    :cond_16
    new-instance p1, Ljava/io/EOFException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1c
    new-instance p1, Le8/j;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Le8/j;-><init>([B)V

    .line 32
    .line 33
    .line 34
    const-class v0, Le8/j;

    .line 35
    .line 36
    const-string v1, "a"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Le8/j;->a:[B

    .line 47
    .line 48
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_33
    const-string p1, "byteCount < 0: "

    .line 53
    .line 54
    invoke-static {v0, p1}, La1/a;->i(ILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    .line 1
    iget-object v0, p0, Le8/j;->a:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Le8/j;->a:[B

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget-object v0, p0, Le8/j;->a:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Le8/j;->a:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    new-array v1, v1, [C

    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_a
    if-ge v3, v2, :cond_25

    .line 12
    .line 13
    aget-byte v5, v0, v3

    .line 14
    .line 15
    add-int/lit8 v6, v4, 0x1

    .line 16
    .line 17
    shr-int/lit8 v7, v5, 0x4

    .line 18
    .line 19
    and-int/lit8 v7, v7, 0xf

    .line 20
    .line 21
    sget-object v8, Lf8/b;->a:[C

    .line 22
    .line 23
    aget-char v7, v8, v7

    .line 24
    .line 25
    aput-char v7, v1, v4

    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x2

    .line 28
    .line 29
    and-int/lit8 v5, v5, 0xf

    .line 30
    .line 31
    aget-char v5, v8, v5

    .line 32
    .line 33
    aput-char v5, v1, v6

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_a

    .line 38
    :cond_25
    new-instance v0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public c()[B
    .registers 2

    .line 1
    iget-object v0, p0, Le8/j;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 9

    .line 1
    check-cast p1, Le8/j;

    .line 2
    .line 3
    const-string v0, "other"

    .line 4
    .line 5
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Le8/j;->a()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Le8/j;->a()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    :goto_15
    if-ge v4, v2, :cond_2b

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Le8/j;->d(I)B

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    and-int/lit16 v5, v5, 0xff

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Le8/j;->d(I)B

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    and-int/lit16 v6, v6, 0xff

    .line 35
    .line 36
    if-ne v5, v6, :cond_28

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_15

    .line 41
    :cond_28
    if-ge v5, v6, :cond_32

    .line 42
    .line 43
    goto :goto_30

    .line 44
    :cond_2b
    if-ne v0, v1, :cond_2e

    .line 45
    .line 46
    return v3

    .line 47
    :cond_2e
    if-ge v0, v1, :cond_32

    .line 48
    .line 49
    :goto_30
    const/4 p1, -0x1

    .line 50
    return p1

    .line 51
    :cond_32
    const/4 p1, 0x1

    .line 52
    return p1
.end method

.method public d(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Le8/j;->a:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public e(I[BII)Z
    .registers 7

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_1b

    .line 7
    .line 8
    iget-object v0, p0, Le8/j;->a:[B

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    sub-int/2addr v1, p4

    .line 12
    if-gt p1, v1, :cond_1b

    .line 13
    .line 14
    if-ltz p3, :cond_1b

    .line 15
    .line 16
    array-length v1, p2

    .line 17
    sub-int/2addr v1, p4

    .line 18
    if-gt p3, v1, :cond_1b

    .line 19
    .line 20
    invoke-static {p1, p3, p4, v0, p2}, Li2/t;->b(III[B[B)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1b

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    if-ne p1, p0, :cond_3

    .line 2
    .line 3
    goto :goto_1a

    .line 4
    :cond_3
    instance-of v0, p1, Le8/j;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1c

    .line 8
    .line 9
    check-cast p1, Le8/j;

    .line 10
    .line 11
    invoke-virtual {p1}, Le8/j;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Le8/j;->a:[B

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    if-ne v0, v3, :cond_1c

    .line 19
    .line 20
    array-length v0, v2

    .line 21
    invoke-virtual {p1, v1, v2, v1, v0}, Le8/j;->e(I[BII)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 26
    .line 27
    :goto_1a
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1c
    return v1
.end method

.method public f(Le8/j;I)Z
    .registers 5

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Le8/j;->a:[B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1, v0, v1, p2}, Le8/j;->e(I[BII)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public g()Le8/j;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Le8/j;->a:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_3d

    .line 6
    .line 7
    aget-byte v2, v1, v0

    .line 8
    .line 9
    const/16 v3, 0x41

    .line 10
    .line 11
    if-lt v2, v3, :cond_3a

    .line 12
    .line 13
    const/16 v4, 0x5a

    .line 14
    .line 15
    if-le v2, v4, :cond_11

    .line 16
    .line 17
    goto :goto_3a

    .line 18
    :cond_11
    array-length v5, v1

    .line 19
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v5, "copyOf(this, size)"

    .line 24
    .line 25
    invoke-static {v5, v1}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v5, v0, 0x1

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x20

    .line 31
    .line 32
    int-to-byte v2, v2

    .line 33
    aput-byte v2, v1, v0

    .line 34
    .line 35
    :goto_22
    array-length v0, v1

    .line 36
    if-ge v5, v0, :cond_34

    .line 37
    .line 38
    aget-byte v0, v1, v5

    .line 39
    .line 40
    if-lt v0, v3, :cond_31

    .line 41
    .line 42
    if-le v0, v4, :cond_2c

    .line 43
    .line 44
    goto :goto_31

    .line 45
    :cond_2c
    add-int/lit8 v0, v0, 0x20

    .line 46
    .line 47
    int-to-byte v0, v0

    .line 48
    aput-byte v0, v1, v5

    .line 49
    .line 50
    :cond_31
    :goto_31
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_22

    .line 53
    :cond_34
    new-instance v0, Le8/j;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Le8/j;-><init>([B)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3d
    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Le8/j;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_17

    .line 4
    .line 5
    invoke-virtual {p0}, Le8/j;->c()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "<this>"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/String;

    .line 15
    .line 16
    sget-object v2, Lk7/a;->a:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Le8/j;->c:Ljava/lang/String;

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_17
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Le8/j;->b:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    return v0

    .line 6
    :cond_5
    iget-object v0, p0, Le8/j;->a:[B

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Le8/j;->b:I

    .line 13
    .line 14
    return v0
.end method

.method public i(Le8/g;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Le8/j;->a:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Le8/g;->x([BI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Le8/j;->a:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-nez v2, :cond_a

    .line 7
    .line 8
    const-string v1, "[size=0]"

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_a
    array-length v2, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :cond_e
    :goto_e
    const/16 v8, 0x40

    .line 16
    .line 17
    if-ge v4, v2, :cond_1b7

    .line 18
    .line 19
    aget-byte v9, v1, v4

    .line 20
    .line 21
    const v10, 0xfffd

    .line 22
    .line 23
    .line 24
    const/16 v11, 0xa0

    .line 25
    .line 26
    const/16 v12, 0x7f

    .line 27
    .line 28
    const/16 v13, 0x20

    .line 29
    .line 30
    const/16 v14, 0xd

    .line 31
    .line 32
    const/16 v15, 0xa

    .line 33
    .line 34
    const/high16 v3, 0x10000

    .line 35
    .line 36
    const/16 v16, 0x2

    .line 37
    .line 38
    const/16 v17, 0x1

    .line 39
    .line 40
    if-ltz v9, :cond_7a

    .line 41
    .line 42
    add-int/lit8 v18, v6, 0x1

    .line 43
    .line 44
    if-ne v6, v8, :cond_2f

    .line 45
    .line 46
    goto/16 :goto_1b7

    .line 47
    .line 48
    :cond_2f
    if-eq v9, v15, :cond_3f

    .line 49
    .line 50
    if-eq v9, v14, :cond_3f

    .line 51
    .line 52
    if-ltz v9, :cond_39

    .line 53
    .line 54
    if-ge v9, v13, :cond_39

    .line 55
    .line 56
    goto/16 :goto_1b6

    .line 57
    .line 58
    :cond_39
    if-gt v12, v9, :cond_3f

    .line 59
    .line 60
    if-ge v9, v11, :cond_3f

    .line 61
    .line 62
    goto/16 :goto_1b6

    .line 63
    .line 64
    :cond_3f
    if-ne v9, v10, :cond_43

    .line 65
    .line 66
    goto/16 :goto_1b6

    .line 67
    .line 68
    :cond_43
    if-ge v9, v3, :cond_48

    .line 69
    .line 70
    move/from16 v6, v17

    .line 71
    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    move/from16 v6, v16

    .line 74
    .line 75
    :goto_4a
    add-int/2addr v5, v6

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    :goto_4d
    move/from16 v6, v18

    .line 79
    .line 80
    if-ge v4, v2, :cond_e

    .line 81
    .line 82
    aget-byte v9, v1, v4

    .line 83
    .line 84
    if-ltz v9, :cond_e

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    add-int/lit8 v18, v6, 0x1

    .line 89
    .line 90
    if-ne v6, v8, :cond_5d

    .line 91
    .line 92
    goto/16 :goto_1b7

    .line 93
    .line 94
    :cond_5d
    if-eq v9, v15, :cond_6d

    .line 95
    .line 96
    if-eq v9, v14, :cond_6d

    .line 97
    .line 98
    if-ltz v9, :cond_67

    .line 99
    .line 100
    if-ge v9, v13, :cond_67

    .line 101
    .line 102
    goto/16 :goto_1b6

    .line 103
    .line 104
    :cond_67
    if-gt v12, v9, :cond_6d

    .line 105
    .line 106
    if-ge v9, v11, :cond_6d

    .line 107
    .line 108
    goto/16 :goto_1b6

    .line 109
    .line 110
    :cond_6d
    if-ne v9, v10, :cond_71

    .line 111
    .line 112
    goto/16 :goto_1b6

    .line 113
    .line 114
    :cond_71
    if-ge v9, v3, :cond_76

    .line 115
    .line 116
    move/from16 v6, v17

    .line 117
    .line 118
    goto :goto_78

    .line 119
    :cond_76
    move/from16 v6, v16

    .line 120
    .line 121
    :goto_78
    add-int/2addr v5, v6

    .line 122
    goto :goto_4d

    .line 123
    :cond_7a
    shr-int/lit8 v7, v9, 0x5

    .line 124
    .line 125
    const/4 v3, -0x2

    .line 126
    const/16 v10, 0x80

    .line 127
    .line 128
    if-ne v7, v3, :cond_c8

    .line 129
    .line 130
    add-int/lit8 v3, v4, 0x1

    .line 131
    .line 132
    if-gt v2, v3, :cond_89

    .line 133
    .line 134
    if-ne v6, v8, :cond_1b6

    .line 135
    .line 136
    goto/16 :goto_1b7

    .line 137
    .line 138
    :cond_89
    aget-byte v3, v1, v3

    .line 139
    .line 140
    and-int/lit16 v7, v3, 0xc0

    .line 141
    .line 142
    if-ne v7, v10, :cond_c4

    .line 143
    .line 144
    xor-int/lit16 v3, v3, 0xf80

    .line 145
    .line 146
    shl-int/lit8 v7, v9, 0x6

    .line 147
    .line 148
    xor-int/2addr v3, v7

    .line 149
    if-ge v3, v10, :cond_9a

    .line 150
    .line 151
    if-ne v6, v8, :cond_1b6

    .line 152
    .line 153
    goto/16 :goto_1b7

    .line 154
    .line 155
    :cond_9a
    add-int/lit8 v7, v6, 0x1

    .line 156
    .line 157
    if-ne v6, v8, :cond_a0

    .line 158
    .line 159
    goto/16 :goto_1b7

    .line 160
    .line 161
    :cond_a0
    if-eq v3, v15, :cond_b0

    .line 162
    .line 163
    if-eq v3, v14, :cond_b0

    .line 164
    .line 165
    if-ltz v3, :cond_aa

    .line 166
    .line 167
    if-ge v3, v13, :cond_aa

    .line 168
    .line 169
    goto/16 :goto_1b6

    .line 170
    .line 171
    :cond_aa
    if-gt v12, v3, :cond_b0

    .line 172
    .line 173
    if-ge v3, v11, :cond_b0

    .line 174
    .line 175
    goto/16 :goto_1b6

    .line 176
    .line 177
    :cond_b0
    const v6, 0xfffd

    .line 178
    .line 179
    .line 180
    if-ne v3, v6, :cond_b7

    .line 181
    .line 182
    goto/16 :goto_1b6

    .line 183
    .line 184
    :cond_b7
    const/high16 v6, 0x10000

    .line 185
    .line 186
    if-ge v3, v6, :cond_bd

    .line 187
    .line 188
    move/from16 v16, v17

    .line 189
    .line 190
    :cond_bd
    add-int v5, v5, v16

    .line 191
    .line 192
    add-int/lit8 v4, v4, 0x2

    .line 193
    .line 194
    :goto_c1
    move v6, v7

    .line 195
    goto/16 :goto_e

    .line 196
    .line 197
    :cond_c4
    if-ne v6, v8, :cond_1b6

    .line 198
    .line 199
    goto/16 :goto_1b7

    .line 200
    .line 201
    :cond_c8
    shr-int/lit8 v7, v9, 0x4

    .line 202
    .line 203
    const v11, 0xe000

    .line 204
    .line 205
    .line 206
    const v12, 0xd800

    .line 207
    .line 208
    .line 209
    if-ne v7, v3, :cond_138

    .line 210
    .line 211
    add-int/lit8 v3, v4, 0x2

    .line 212
    .line 213
    if-gt v2, v3, :cond_da

    .line 214
    .line 215
    if-ne v6, v8, :cond_1b6

    .line 216
    .line 217
    goto/16 :goto_1b7

    .line 218
    .line 219
    :cond_da
    add-int/lit8 v7, v4, 0x1

    .line 220
    .line 221
    aget-byte v7, v1, v7

    .line 222
    .line 223
    and-int/lit16 v13, v7, 0xc0

    .line 224
    .line 225
    if-ne v13, v10, :cond_134

    .line 226
    .line 227
    aget-byte v3, v1, v3

    .line 228
    .line 229
    and-int/lit16 v13, v3, 0xc0

    .line 230
    .line 231
    if-ne v13, v10, :cond_130

    .line 232
    .line 233
    const v10, -0x1e080

    .line 234
    .line 235
    .line 236
    xor-int/2addr v3, v10

    .line 237
    shl-int/lit8 v7, v7, 0x6

    .line 238
    .line 239
    xor-int/2addr v3, v7

    .line 240
    shl-int/lit8 v7, v9, 0xc

    .line 241
    .line 242
    xor-int/2addr v3, v7

    .line 243
    const/16 v7, 0x800

    .line 244
    .line 245
    if-ge v3, v7, :cond_fa

    .line 246
    .line 247
    if-ne v6, v8, :cond_1b6

    .line 248
    .line 249
    goto/16 :goto_1b7

    .line 250
    .line 251
    :cond_fa
    if-gt v12, v3, :cond_102

    .line 252
    .line 253
    if-ge v3, v11, :cond_102

    .line 254
    .line 255
    if-ne v6, v8, :cond_1b6

    .line 256
    .line 257
    goto/16 :goto_1b7

    .line 258
    .line 259
    :cond_102
    add-int/lit8 v7, v6, 0x1

    .line 260
    .line 261
    if-ne v6, v8, :cond_108

    .line 262
    .line 263
    goto/16 :goto_1b7

    .line 264
    .line 265
    :cond_108
    if-eq v3, v15, :cond_11e

    .line 266
    .line 267
    if-eq v3, v14, :cond_11e

    .line 268
    .line 269
    if-ltz v3, :cond_114

    .line 270
    .line 271
    const/16 v6, 0x20

    .line 272
    .line 273
    if-ge v3, v6, :cond_114

    .line 274
    .line 275
    goto/16 :goto_1b6

    .line 276
    .line 277
    :cond_114
    const/16 v6, 0x7f

    .line 278
    .line 279
    if-gt v6, v3, :cond_11e

    .line 280
    .line 281
    const/16 v6, 0xa0

    .line 282
    .line 283
    if-ge v3, v6, :cond_11e

    .line 284
    .line 285
    goto/16 :goto_1b6

    .line 286
    .line 287
    :cond_11e
    const v6, 0xfffd

    .line 288
    .line 289
    .line 290
    if-ne v3, v6, :cond_125

    .line 291
    .line 292
    goto/16 :goto_1b6

    .line 293
    .line 294
    :cond_125
    const/high16 v6, 0x10000

    .line 295
    .line 296
    if-ge v3, v6, :cond_12b

    .line 297
    .line 298
    move/from16 v16, v17

    .line 299
    .line 300
    :cond_12b
    add-int v5, v5, v16

    .line 301
    .line 302
    add-int/lit8 v4, v4, 0x3

    .line 303
    .line 304
    goto :goto_c1

    .line 305
    :cond_130
    if-ne v6, v8, :cond_1b6

    .line 306
    .line 307
    goto/16 :goto_1b7

    .line 308
    .line 309
    :cond_134
    if-ne v6, v8, :cond_1b6

    .line 310
    .line 311
    goto/16 :goto_1b7

    .line 312
    .line 313
    :cond_138
    shr-int/lit8 v7, v9, 0x3

    .line 314
    .line 315
    if-ne v7, v3, :cond_1b3

    .line 316
    .line 317
    add-int/lit8 v3, v4, 0x3

    .line 318
    .line 319
    if-gt v2, v3, :cond_144

    .line 320
    .line 321
    if-ne v6, v8, :cond_1b6

    .line 322
    .line 323
    goto/16 :goto_1b7

    .line 324
    .line 325
    :cond_144
    add-int/lit8 v7, v4, 0x1

    .line 326
    .line 327
    aget-byte v7, v1, v7

    .line 328
    .line 329
    and-int/lit16 v13, v7, 0xc0

    .line 330
    .line 331
    if-ne v13, v10, :cond_1b0

    .line 332
    .line 333
    add-int/lit8 v13, v4, 0x2

    .line 334
    .line 335
    aget-byte v13, v1, v13

    .line 336
    .line 337
    and-int/lit16 v14, v13, 0xc0

    .line 338
    .line 339
    if-ne v14, v10, :cond_1ad

    .line 340
    .line 341
    aget-byte v3, v1, v3

    .line 342
    .line 343
    and-int/lit16 v14, v3, 0xc0

    .line 344
    .line 345
    if-ne v14, v10, :cond_1aa

    .line 346
    .line 347
    const v10, 0x381f80

    .line 348
    .line 349
    .line 350
    xor-int/2addr v3, v10

    .line 351
    shl-int/lit8 v10, v13, 0x6

    .line 352
    .line 353
    xor-int/2addr v3, v10

    .line 354
    shl-int/lit8 v7, v7, 0xc

    .line 355
    .line 356
    xor-int/2addr v3, v7

    .line 357
    shl-int/lit8 v7, v9, 0x12

    .line 358
    .line 359
    xor-int/2addr v3, v7

    .line 360
    const v7, 0x10ffff

    .line 361
    .line 362
    .line 363
    if-le v3, v7, :cond_16f

    .line 364
    .line 365
    if-ne v6, v8, :cond_1b6

    .line 366
    .line 367
    goto :goto_1b7

    .line 368
    :cond_16f
    if-gt v12, v3, :cond_176

    .line 369
    .line 370
    if-ge v3, v11, :cond_176

    .line 371
    .line 372
    if-ne v6, v8, :cond_1b6

    .line 373
    .line 374
    goto :goto_1b7

    .line 375
    :cond_176
    const/high16 v7, 0x10000

    .line 376
    .line 377
    if-ge v3, v7, :cond_17d

    .line 378
    .line 379
    if-ne v6, v8, :cond_1b6

    .line 380
    .line 381
    goto :goto_1b7

    .line 382
    :cond_17d
    add-int/lit8 v7, v6, 0x1

    .line 383
    .line 384
    if-ne v6, v8, :cond_182

    .line 385
    .line 386
    goto :goto_1b7

    .line 387
    :cond_182
    if-eq v3, v15, :cond_198

    .line 388
    .line 389
    const/16 v6, 0xd

    .line 390
    .line 391
    if-eq v3, v6, :cond_198

    .line 392
    .line 393
    if-ltz v3, :cond_18f

    .line 394
    .line 395
    const/16 v6, 0x20

    .line 396
    .line 397
    if-ge v3, v6, :cond_18f

    .line 398
    .line 399
    goto :goto_1b6

    .line 400
    :cond_18f
    const/16 v6, 0x7f

    .line 401
    .line 402
    if-gt v6, v3, :cond_198

    .line 403
    .line 404
    const/16 v6, 0xa0

    .line 405
    .line 406
    if-ge v3, v6, :cond_198

    .line 407
    .line 408
    goto :goto_1b6

    .line 409
    :cond_198
    const v6, 0xfffd

    .line 410
    .line 411
    .line 412
    if-ne v3, v6, :cond_19e

    .line 413
    .line 414
    goto :goto_1b6

    .line 415
    :cond_19e
    const/high16 v6, 0x10000

    .line 416
    .line 417
    if-ge v3, v6, :cond_1a4

    .line 418
    .line 419
    move/from16 v16, v17

    .line 420
    .line 421
    :cond_1a4
    add-int v5, v5, v16

    .line 422
    .line 423
    add-int/lit8 v4, v4, 0x4

    .line 424
    .line 425
    goto/16 :goto_c1

    .line 426
    .line 427
    :cond_1aa
    if-ne v6, v8, :cond_1b6

    .line 428
    .line 429
    goto :goto_1b7

    .line 430
    :cond_1ad
    if-ne v6, v8, :cond_1b6

    .line 431
    .line 432
    goto :goto_1b7

    .line 433
    :cond_1b0
    if-ne v6, v8, :cond_1b6

    .line 434
    .line 435
    goto :goto_1b7

    .line 436
    :cond_1b3
    if-ne v6, v8, :cond_1b6

    .line 437
    .line 438
    goto :goto_1b7

    .line 439
    :cond_1b6
    :goto_1b6
    const/4 v5, -0x1

    .line 440
    :cond_1b7
    :goto_1b7
    const-string v1, "\u2026]"

    .line 441
    .line 442
    const-string v2, "[size="

    .line 443
    .line 444
    const/16 v3, 0x5d

    .line 445
    .line 446
    const/4 v4, -0x1

    .line 447
    if-ne v5, v4, :cond_237

    .line 448
    .line 449
    iget-object v4, v0, Le8/j;->a:[B

    .line 450
    .line 451
    array-length v4, v4

    .line 452
    if-gt v4, v8, :cond_1db

    .line 453
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string v2, "[hex="

    .line 457
    .line 458
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0}, Le8/j;->b()Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    return-object v1

    .line 476
    :cond_1db
    new-instance v3, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v2, v0, Le8/j;->a:[B

    .line 482
    .line 483
    array-length v2, v2

    .line 484
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    const-string v2, " hex="

    .line 488
    .line 489
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    iget-object v2, v0, Le8/j;->a:[B

    .line 493
    .line 494
    array-length v4, v2

    .line 495
    if-gt v8, v4, :cond_217

    .line 496
    .line 497
    array-length v4, v2

    .line 498
    if-ne v8, v4, :cond_1f5

    .line 499
    .line 500
    move-object v4, v0

    .line 501
    goto :goto_208

    .line 502
    :cond_1f5
    new-instance v4, Le8/j;

    .line 503
    .line 504
    array-length v5, v2

    .line 505
    invoke-static {v8, v5}, Ld4/a;->b(II)V

    .line 506
    .line 507
    .line 508
    const/4 v5, 0x0

    .line 509
    invoke-static {v2, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    const-string v5, "copyOfRange(...)"

    .line 514
    .line 515
    invoke-static {v5, v2}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    invoke-direct {v4, v2}, Le8/j;-><init>([B)V

    .line 519
    .line 520
    .line 521
    :goto_208
    invoke-virtual {v4}, Le8/j;->b()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    return-object v1

    .line 536
    :cond_217
    new-instance v1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v2, "endIndex > length("

    .line 539
    .line 540
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    iget-object v2, v0, Le8/j;->a:[B

    .line 544
    .line 545
    array-length v2, v2

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const/16 v2, 0x29

    .line 550
    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    throw v2

    .line 568
    :cond_237
    invoke-virtual {v0}, Le8/j;->h()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    const/4 v6, 0x0

    .line 573
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    const-string v7, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 578
    .line 579
    invoke-static {v7, v6}, Ld7/g;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    const-string v7, "\\"

    .line 583
    .line 584
    const-string v8, "\\\\"

    .line 585
    .line 586
    invoke-static {v6, v7, v8}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v6

    .line 590
    const-string v7, "\n"

    .line 591
    .line 592
    const-string v8, "\\n"

    .line 593
    .line 594
    invoke-static {v6, v7, v8}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v6

    .line 598
    const-string v7, "\r"

    .line 599
    .line 600
    const-string v8, "\\r"

    .line 601
    .line 602
    invoke-static {v6, v7, v8}, Lk7/o;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    if-ge v5, v4, :cond_27e

    .line 611
    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    iget-object v2, v0, Le8/j;->a:[B

    .line 618
    .line 619
    array-length v2, v2

    .line 620
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    const-string v2, " text="

    .line 624
    .line 625
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    return-object v1

    .line 639
    :cond_27e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    const-string v2, "[text="

    .line 642
    .line 643
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    return-object v1
.end method
