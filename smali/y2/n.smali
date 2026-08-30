###### Class y2.n (y2.n)
.class public final Ly2/n;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly2/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Lx1/a;

.field public final c:Lx1/g;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ly2/m;

.field public g:Ljava/util/Map;

.field public h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln4/e;

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln4/e;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ly2/n;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "error"

    :cond_b
    if-eqz v0, :cond_7b

    .line 11
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x1

    goto :goto_2a

    :cond_17
    const-string v1, "CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x2

    goto :goto_2a

    :cond_21
    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    const/4 v0, 0x3

    .line 12
    :goto_2a
    iput v0, p0, Ly2/n;->a:I

    .line 13
    const-class v0, Lx1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lx1/a;

    iput-object v0, p0, Ly2/n;->b:Lx1/a;

    .line 14
    const-class v0, Lx1/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lx1/g;

    iput-object v0, p0, Ly2/n;->c:Lx1/g;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly2/n;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly2/n;->e:Ljava/lang/String;

    .line 17
    const-class v0, Ly2/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ly2/m;

    iput-object v0, p0, Ly2/n;->f:Ly2/m;

    .line 18
    invoke-static {p1}, Lq2/g0;->I(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ly2/n;->g:Ljava/util/Map;

    .line 19
    invoke-static {p1}, Lq2/g0;->I(Landroid/os/Parcel;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Ly2/n;->h:Ljava/util/HashMap;

    return-void

    .line 20
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enum constant com.facebook.login.LoginClient.Result.Code."

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Name is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ly2/m;ILx1/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "code"

    invoke-static {p2, v0}, La1/a;->n(ILjava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-direct/range {v1 .. v7}, Ly2/n;-><init>(Ly2/m;ILx1/a;Lx1/g;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ly2/m;ILx1/a;Lx1/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "code"

    invoke-static {p2, v0}, La1/a;->n(ILjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ly2/n;->f:Ly2/m;

    .line 4
    iput-object p3, p0, Ly2/n;->b:Lx1/a;

    .line 5
    iput-object p4, p0, Ly2/n;->c:Lx1/g;

    .line 6
    iput-object p5, p0, Ly2/n;->d:Ljava/lang/String;

    .line 7
    iput p2, p0, Ly2/n;->a:I

    .line 8
    iput-object p6, p0, Ly2/n;->e:Ljava/lang/String;

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

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {v0, p1}, Ld7/g;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget v1, p0, Ly2/n;->a:I

    .line 8
    .line 9
    if-eq v1, v0, :cond_18

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq v1, v0, :cond_15

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-ne v1, v0, :cond_13

    .line 16
    .line 17
    const-string v0, "ERROR"

    .line 18
    .line 19
    goto :goto_1a

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    throw p1

    .line 22
    :cond_15
    const-string v0, "CANCEL"

    .line 23
    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    const-string v0, "SUCCESS"

    .line 26
    .line 27
    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Ly2/n;->b:Lx1/a;

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ly2/n;->c:Lx1/g;

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Ly2/n;->d:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Ly2/n;->e:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Ly2/n;->f:Ly2/m;

    .line 51
    .line 52
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Ly2/n;->g:Ljava/util/Map;

    .line 56
    .line 57
    invoke-static {p1, p2}, Lq2/g0;->N(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Ly2/n;->h:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-static {p1, p2}, Lq2/g0;->N(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
