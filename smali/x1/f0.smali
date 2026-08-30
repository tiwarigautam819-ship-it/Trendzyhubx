###### Class x1.f0 (x1.f0)
.class public final Lx1/f0;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx1/f0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/net/Uri;

.field public final g:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx1/f0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->c:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->d:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->e:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    move-object v0, v1

    goto :goto_2e

    .line 27
    :cond_2a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2e
    iput-object v0, p0, Lx1/f0;->f:Landroid/net/Uri;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_37

    goto :goto_3b

    .line 29
    :cond_37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_3b
    iput-object v1, p0, Lx1/f0;->g:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "id"

    invoke-static {p1, v0}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lx1/f0;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lx1/f0;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lx1/f0;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lx1/f0;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lx1/f0;->e:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lx1/f0;->f:Landroid/net/Uri;

    .line 9
    iput-object p7, p0, Lx1/f0;->g:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->a:Ljava/lang/String;

    .line 12
    const-string v0, "first_name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->b:Ljava/lang/String;

    .line 13
    const-string v0, "middle_name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->c:Ljava/lang/String;

    .line 14
    const-string v0, "last_name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->d:Ljava/lang/String;

    .line 15
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx1/f0;->e:Ljava/lang/String;

    .line 16
    const-string v0, "link_uri"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_36

    move-object v0, v1

    goto :goto_3a

    .line 17
    :cond_36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_3a
    iput-object v0, p0, Lx1/f0;->f:Landroid/net/Uri;

    .line 18
    const-string v0, "picture_uri"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_45

    goto :goto_49

    .line 19
    :cond_45
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_49
    iput-object v1, p0, Lx1/f0;->g:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 3
    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lx1/f0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 9
    .line 10
    return v2

    .line 11
    :cond_a
    iget-object v1, p0, Lx1/f0;->a:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_15

    .line 14
    .line 15
    move-object v3, p1

    .line 16
    check-cast v3, Lx1/f0;

    .line 17
    .line 18
    iget-object v3, v3, Lx1/f0;->a:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v3, :cond_20

    .line 21
    .line 22
    :cond_15
    move-object v3, p1

    .line 23
    check-cast v3, Lx1/f0;

    .line 24
    .line 25
    iget-object v3, v3, Lx1/f0;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_a4

    .line 32
    .line 33
    :cond_20
    iget-object v1, p0, Lx1/f0;->b:Ljava/lang/String;

    .line 34
    .line 35
    if-nez v1, :cond_2b

    .line 36
    .line 37
    move-object v3, p1

    .line 38
    check-cast v3, Lx1/f0;

    .line 39
    .line 40
    iget-object v3, v3, Lx1/f0;->b:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v3, :cond_36

    .line 43
    .line 44
    :cond_2b
    move-object v3, p1

    .line 45
    check-cast v3, Lx1/f0;

    .line 46
    .line 47
    iget-object v3, v3, Lx1/f0;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_a4

    .line 54
    .line 55
    :cond_36
    iget-object v1, p0, Lx1/f0;->c:Ljava/lang/String;

    .line 56
    .line 57
    if-nez v1, :cond_41

    .line 58
    .line 59
    move-object v3, p1

    .line 60
    check-cast v3, Lx1/f0;

    .line 61
    .line 62
    iget-object v3, v3, Lx1/f0;->c:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v3, :cond_4c

    .line 65
    .line 66
    :cond_41
    move-object v3, p1

    .line 67
    check-cast v3, Lx1/f0;

    .line 68
    .line 69
    iget-object v3, v3, Lx1/f0;->c:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_a4

    .line 76
    .line 77
    :cond_4c
    iget-object v1, p0, Lx1/f0;->d:Ljava/lang/String;

    .line 78
    .line 79
    if-nez v1, :cond_57

    .line 80
    .line 81
    move-object v3, p1

    .line 82
    check-cast v3, Lx1/f0;

    .line 83
    .line 84
    iget-object v3, v3, Lx1/f0;->d:Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v3, :cond_62

    .line 87
    .line 88
    :cond_57
    move-object v3, p1

    .line 89
    check-cast v3, Lx1/f0;

    .line 90
    .line 91
    iget-object v3, v3, Lx1/f0;->d:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_a4

    .line 98
    .line 99
    :cond_62
    iget-object v1, p0, Lx1/f0;->e:Ljava/lang/String;

    .line 100
    .line 101
    if-nez v1, :cond_6d

    .line 102
    .line 103
    move-object v3, p1

    .line 104
    check-cast v3, Lx1/f0;

    .line 105
    .line 106
    iget-object v3, v3, Lx1/f0;->e:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v3, :cond_78

    .line 109
    .line 110
    :cond_6d
    move-object v3, p1

    .line 111
    check-cast v3, Lx1/f0;

    .line 112
    .line 113
    iget-object v3, v3, Lx1/f0;->e:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_a4

    .line 120
    .line 121
    :cond_78
    iget-object v1, p0, Lx1/f0;->f:Landroid/net/Uri;

    .line 122
    .line 123
    if-nez v1, :cond_83

    .line 124
    .line 125
    move-object v3, p1

    .line 126
    check-cast v3, Lx1/f0;

    .line 127
    .line 128
    iget-object v3, v3, Lx1/f0;->f:Landroid/net/Uri;

    .line 129
    .line 130
    if-eqz v3, :cond_8e

    .line 131
    .line 132
    :cond_83
    move-object v3, p1

    .line 133
    check-cast v3, Lx1/f0;

    .line 134
    .line 135
    iget-object v3, v3, Lx1/f0;->f:Landroid/net/Uri;

    .line 136
    .line 137
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_a4

    .line 142
    .line 143
    :cond_8e
    iget-object v1, p0, Lx1/f0;->g:Landroid/net/Uri;

    .line 144
    .line 145
    if-nez v1, :cond_99

    .line 146
    .line 147
    move-object v3, p1

    .line 148
    check-cast v3, Lx1/f0;

    .line 149
    .line 150
    iget-object v3, v3, Lx1/f0;->g:Landroid/net/Uri;

    .line 151
    .line 152
    if-eqz v3, :cond_a3

    .line 153
    .line 154
    :cond_99
    check-cast p1, Lx1/f0;

    .line 155
    .line 156
    iget-object p1, p1, Lx1/f0;->g:Landroid/net/Uri;

    .line 157
    .line 158
    invoke-static {v1, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_a4

    .line 163
    .line 164
    :cond_a3
    return v0

    .line 165
    :cond_a4
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lx1/f0;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    const/16 v1, 0x20f

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iget-object v0, p0, Lx1/f0;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_18

    .line 17
    .line 18
    mul-int/lit8 v1, v1, 0x1f

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v1, v0

    .line 25
    :cond_18
    iget-object v0, p0, Lx1/f0;->c:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_23

    .line 28
    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v1, v0

    .line 36
    :cond_23
    iget-object v0, p0, Lx1/f0;->d:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v0, :cond_2e

    .line 39
    .line 40
    mul-int/lit8 v1, v1, 0x1f

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    :cond_2e
    iget-object v0, p0, Lx1/f0;->e:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v0, :cond_39

    .line 50
    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v1, v0

    .line 58
    :cond_39
    iget-object v0, p0, Lx1/f0;->f:Landroid/net/Uri;

    .line 59
    .line 60
    if-eqz v0, :cond_44

    .line 61
    .line 62
    mul-int/lit8 v1, v1, 0x1f

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v1, v0

    .line 69
    :cond_44
    iget-object v0, p0, Lx1/f0;->g:Landroid/net/Uri;

    .line 70
    .line 71
    if-eqz v0, :cond_50

    .line 72
    .line 73
    mul-int/lit8 v1, v1, 0x1f

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-int/2addr v0, v1

    .line 80
    return v0

    .line 81
    :cond_50
    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p2, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lx1/f0;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lx1/f0;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lx1/f0;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lx1/f0;->d:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lx1/f0;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p2, 0x0

    .line 32
    iget-object v0, p0, Lx1/f0;->f:Landroid/net/Uri;

    .line 33
    .line 34
    if-eqz v0, :cond_28

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_29

    .line 41
    :cond_28
    move-object v0, p2

    .line 42
    :goto_29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lx1/f0;->g:Landroid/net/Uri;

    .line 46
    .line 47
    if-eqz v0, :cond_34

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :cond_34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
