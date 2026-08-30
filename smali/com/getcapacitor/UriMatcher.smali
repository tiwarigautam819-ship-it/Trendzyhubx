###### Class com.getcapacitor.UriMatcher (com.getcapacitor.UriMatcher)
.class public Lcom/getcapacitor/UriMatcher;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field private static final EXACT:I = 0x0

.field private static final MASK:I = 0x3

.field static final PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final REST:I = 0x2

.field private static final TEXT:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/getcapacitor/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/getcapacitor/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 20

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    if-eqz v1, :cond_91

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_23

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_1c

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x2f

    .line 22
    .line 23
    if-ne v4, v5, :cond_1c

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1c
    sget-object v4, Lcom/getcapacitor/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    :goto_24
    if-eqz v0, :cond_28

    .line 38
    .line 39
    array-length v4, v0

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move v4, v3

    .line 42
    :goto_29
    const/4 v5, -0x2

    .line 43
    move-object v7, p0

    .line 44
    move v6, v5

    .line 45
    :goto_2c
    if-ge v6, v4, :cond_8e

    .line 46
    .line 47
    const/4 v8, -0x1

    .line 48
    if-ne v6, v5, :cond_34

    .line 49
    .line 50
    move-object/from16 v9, p1

    .line 51
    .line 52
    goto :goto_3b

    .line 53
    :cond_34
    if-ne v6, v8, :cond_39

    .line 54
    .line 55
    move-object/from16 v9, p2

    .line 56
    .line 57
    goto :goto_3b

    .line 58
    :cond_39
    aget-object v9, v0, v6

    .line 59
    .line 60
    :goto_3b
    iget-object v10, v7, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    move v12, v3

    .line 67
    :goto_42
    if-ge v12, v11, :cond_57

    .line 68
    .line 69
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v13

    .line 73
    check-cast v13, Lcom/getcapacitor/UriMatcher;

    .line 74
    .line 75
    iget-object v14, v13, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v14

    .line 81
    if-eqz v14, :cond_54

    .line 82
    .line 83
    move-object v7, v13

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    add-int/lit8 v12, v12, 0x1

    .line 86
    .line 87
    goto :goto_42

    .line 88
    :cond_57
    :goto_57
    if-ne v12, v11, :cond_8b

    .line 89
    .line 90
    new-instance v10, Lcom/getcapacitor/UriMatcher;

    .line 91
    .line 92
    invoke-direct {v10}, Lcom/getcapacitor/UriMatcher;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v11, "*"

    .line 96
    .line 97
    if-ne v6, v8, :cond_6c

    .line 98
    .line 99
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_6c

    .line 104
    .line 105
    const/4 v8, 0x3

    .line 106
    iput v8, v10, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 107
    .line 108
    goto :goto_83

    .line 109
    :cond_6c
    const-string v8, "**"

    .line 110
    .line 111
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_78

    .line 116
    .line 117
    const/4 v8, 0x2

    .line 118
    iput v8, v10, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 119
    .line 120
    goto :goto_83

    .line 121
    :cond_78
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_81

    .line 126
    .line 127
    iput v2, v10, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 128
    .line 129
    goto :goto_83

    .line 130
    :cond_81
    iput v3, v10, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 131
    .line 132
    :goto_83
    iput-object v9, v10, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v7, v7, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-object v7, v10

    .line 140
    :cond_8b
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_2c

    .line 143
    :cond_8e
    iput-object v1, v7, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    .line 144
    .line 145
    return-void

    .line 146
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string v1, "Code can\'t be null"

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0
.end method

.method public match(Landroid/net/Uri;)Ljava/lang/Object;
    .registers 15

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_13

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_13

    .line 16
    .line 17
    iget-object p1, p0, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_13
    const/4 v2, -0x2

    .line 21
    move-object v4, p0

    .line 22
    move v3, v2

    .line 23
    :goto_16
    if-ge v3, v1, :cond_75

    .line 24
    .line 25
    if-ne v3, v2, :cond_1f

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    goto :goto_2d

    .line 32
    :cond_1f
    const/4 v5, -0x1

    .line 33
    if-ne v3, v5, :cond_27

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    goto :goto_2d

    .line 40
    :cond_27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    .line 46
    :goto_2d
    iget-object v6, v4, Lcom/getcapacitor/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-nez v6, :cond_32

    .line 49
    .line 50
    goto :goto_75

    .line 51
    :cond_32
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move-object v9, v7

    .line 58
    :goto_39
    if-ge v8, v4, :cond_6a

    .line 59
    .line 60
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Lcom/getcapacitor/UriMatcher;

    .line 65
    .line 66
    iget v11, v10, Lcom/getcapacitor/UriMatcher;->mWhich:I

    .line 67
    .line 68
    if-eqz v11, :cond_5f

    .line 69
    .line 70
    const/4 v12, 0x1

    .line 71
    if-eq v11, v12, :cond_67

    .line 72
    .line 73
    const/4 v12, 0x2

    .line 74
    if-eq v11, v12, :cond_5c

    .line 75
    .line 76
    const/4 v12, 0x3

    .line 77
    if-eq v11, v12, :cond_4f

    .line 78
    .line 79
    goto :goto_68

    .line 80
    :cond_4f
    iget-object v11, v10, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v11}, Lcom/getcapacitor/util/HostMask$Parser;->parse(Ljava/lang/String;)Lcom/getcapacitor/util/HostMask;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-interface {v11, v5}, Lcom/getcapacitor/util/HostMask;->matches(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    if-eqz v11, :cond_68

    .line 91
    .line 92
    goto :goto_67

    .line 93
    :cond_5c
    iget-object p1, v10, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_5f
    iget-object v11, v10, Lcom/getcapacitor/UriMatcher;->mText:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v11

    .line 102
    if-eqz v11, :cond_68

    .line 103
    .line 104
    :cond_67
    :goto_67
    move-object v9, v10

    .line 105
    :cond_68
    :goto_68
    if-eqz v9, :cond_6c

    .line 106
    .line 107
    :cond_6a
    move-object v4, v9

    .line 108
    goto :goto_6f

    .line 109
    :cond_6c
    add-int/lit8 v8, v8, 0x1

    .line 110
    .line 111
    goto :goto_39

    .line 112
    :goto_6f
    if-nez v4, :cond_72

    .line 113
    .line 114
    return-object v7

    .line 115
    :cond_72
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_16

    .line 118
    :cond_75
    :goto_75
    iget-object p1, v4, Lcom/getcapacitor/UriMatcher;->mCode:Ljava/lang/Object;

    .line 119
    .line 120
    return-object p1
.end method
