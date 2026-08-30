###### Class x1.g (x1.g)
.class public final Lx1/g;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lx1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lx1/i;

.field public final d:Lx1/h;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx1/g;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 22
    const-string v1, "token"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/g;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "expectedNonce"

    invoke-static {v0, v1}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lx1/g;->b:Ljava/lang/String;

    .line 25
    const-class v0, Lx1/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_4d

    check-cast v0, Lx1/i;

    .line 26
    iput-object v0, p0, Lx1/g;->c:Lx1/i;

    .line 27
    const-class v0, Lx1/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_47

    check-cast v0, Lx1/h;

    .line 28
    iput-object v0, p0, Lx1/g;->d:Lx1/h;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 30
    const-string v0, "signature"

    invoke-static {p1, v0}, Lq2/g;->j(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lx1/g;->e:Ljava/lang/String;

    return-void

    .line 31
    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "expectedNonce"

    invoke-static {v0, p2}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v1, "token"

    invoke-static {p1, v1}, Lq2/g;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p2, v0}, Lq2/g;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v0, "."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lk7/g;->J(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_7b

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lx1/g;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lx1/g;->b:Ljava/lang/String;

    .line 11
    new-instance p1, Lx1/i;

    invoke-direct {p1, v1}, Lx1/i;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lx1/g;->c:Lx1/i;

    .line 12
    new-instance v4, Lx1/h;

    invoke-direct {v4, v3, p2}, Lx1/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lx1/g;->d:Lx1/h;

    .line 13
    iget-object p1, p1, Lx1/i;->c:Ljava/lang/String;

    .line 14
    :try_start_4b
    invoke-static {p1}, Lx2/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_52

    goto :goto_6e

    .line 15
    :cond_52
    invoke-static {p1}, Lx2/a;->h(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lx2/a;->q(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_6e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4b .. :try_end_6e} :catch_6e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_6e} :catch_6e

    :catch_6e
    :goto_6e
    if-eqz v2, :cond_73

    .line 17
    iput-object v0, p0, Lx1/g;->e:Ljava/lang/String;

    return-void

    .line 18
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Signature"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid IdToken string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
    instance-of v1, p1, Lx1/g;

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
    check-cast p1, Lx1/g;

    .line 12
    .line 13
    iget-object v1, p1, Lx1/g;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p0, Lx1/g;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3, v1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3f

    .line 22
    .line 23
    iget-object v1, p0, Lx1/g;->b:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v3, p1, Lx1/g;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3f

    .line 32
    .line 33
    iget-object v1, p0, Lx1/g;->c:Lx1/i;

    .line 34
    .line 35
    iget-object v3, p1, Lx1/g;->c:Lx1/i;

    .line 36
    .line 37
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_3f

    .line 42
    .line 43
    iget-object v1, p0, Lx1/g;->d:Lx1/h;

    .line 44
    .line 45
    iget-object v3, p1, Lx1/g;->d:Lx1/h;

    .line 46
    .line 47
    invoke-static {v1, v3}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3f

    .line 52
    .line 53
    iget-object v1, p0, Lx1/g;->e:Ljava/lang/String;

    .line 54
    .line 55
    iget-object p1, p1, Lx1/g;->e:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, p1}, Ld7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_3f

    .line 62
    .line 63
    return v0

    .line 64
    :cond_3f
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    const/16 v0, 0x20f

    .line 2
    .line 3
    iget-object v1, p0, Lx1/g;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0x1f

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lx1/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lq2/x;->d(ILjava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lx1/g;->c:Lx1/i;

    .line 18
    .line 19
    invoke-virtual {v1}, Lx1/i;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/2addr v1, v2

    .line 25
    iget-object v0, p0, Lx1/g;->d:Lx1/h;

    .line 26
    .line 27
    invoke-virtual {v0}, Lx1/h;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v0, v1

    .line 32
    mul-int/2addr v0, v2

    .line 33
    iget-object v1, p0, Lx1/g;->e:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, v0

    .line 40
    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lx1/g;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lx1/g;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lx1/g;->c:Lx1/i;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lx1/g;->d:Lx1/h;

    .line 22
    .line 23
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lx1/g;->e:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
