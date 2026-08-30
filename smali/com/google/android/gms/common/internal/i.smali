###### Class com.google.android.gms.common.internal.i (com.google.android.gms.common.internal.i)
.class public final Lcom/google/android/gms/common/internal/i;
.super Ly3/a;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:[Lcom/google/android/gms/common/api/Scope;

.field public static final x:[Lv3/c;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Ljava/lang/String;

.field public e:Landroid/os/IBinder;

.field public f:[Lcom/google/android/gms/common/api/Scope;

.field public g:Landroid/os/Bundle;

.field public h:Landroid/accounts/Account;

.field public i:[Lv3/c;

.field public j:[Lv3/c;

.field public final k:Z

.field public final l:I

.field public m:Z

.field public final v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, La/c;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, La/c;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/common/internal/i;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    .line 12
    .line 13
    sput-object v1, Lcom/google/android/gms/common/internal/i;->w:[Lcom/google/android/gms/common/api/Scope;

    .line 14
    .line 15
    new-array v0, v0, [Lv3/c;

    .line 16
    .line 17
    sput-object v0, Lcom/google/android/gms/common/internal/i;->x:[Lv3/c;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lv3/c;[Lv3/c;ZIZLjava/lang/String;)V
    .registers 22

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p6, :cond_8

    .line 2
    sget-object v1, Lcom/google/android/gms/common/internal/i;->w:[Lcom/google/android/gms/common/api/Scope;

    goto :goto_9

    :cond_8
    move-object v1, p6

    :goto_9
    if-nez p7, :cond_11

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_12

    :cond_11
    move-object v2, p7

    :goto_12
    sget-object v3, Lcom/google/android/gms/common/internal/i;->x:[Lv3/c;

    if-nez p9, :cond_18

    move-object v4, v3

    goto :goto_1a

    :cond_18
    move-object/from16 v4, p9

    :goto_1a
    if-nez p10, :cond_1d

    goto :goto_1f

    :cond_1d
    move-object/from16 v3, p10

    :goto_1f
    iput p1, p0, Lcom/google/android/gms/common/internal/i;->a:I

    iput p2, p0, Lcom/google/android/gms/common/internal/i;->b:I

    iput p3, p0, Lcom/google/android/gms/common/internal/i;->c:I

    .line 3
    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_30

    iput-object p2, p0, Lcom/google/android/gms/common/internal/i;->d:Ljava/lang/String;

    goto :goto_32

    .line 4
    :cond_30
    iput-object p4, p0, Lcom/google/android/gms/common/internal/i;->d:Ljava/lang/String;

    :goto_32
    const/4 p2, 0x2

    if-ge p1, p2, :cond_7f

    const/4 p1, 0x0

    if-eqz p5, :cond_7c

    .line 5
    sget p3, Lcom/google/android/gms/common/internal/a;->c:I

    .line 6
    const-string p3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p5, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v5, p4, Lcom/google/android/gms/common/internal/l;

    if-eqz v5, :cond_47

    .line 7
    check-cast p4, Lcom/google/android/gms/common/internal/l;

    goto :goto_4d

    :cond_47
    new-instance p4, Lcom/google/android/gms/common/internal/q0;

    const/4 v5, 0x1

    .line 8
    invoke-direct {p4, p5, p3, v5}, Lh4/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 9
    :goto_4d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 10
    :try_start_51
    check-cast p4, Lcom/google/android/gms/common/internal/q0;

    .line 11
    invoke-virtual {p4}, Lh4/a;->c()Landroid/os/Parcel;

    move-result-object p3

    .line 12
    invoke-virtual {p4, p2, p3}, Lh4/a;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    sget-object p3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    invoke-static {p2, p3}, Lj4/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_66} :catch_6b
    .catchall {:try_start_51 .. :try_end_66} :catchall_76

    .line 15
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p3

    goto :goto_7c

    :catch_6b
    :try_start_6b
    const-string p2, "AccountAccessor"

    const-string p3, "Remote account accessor probably died"

    .line 16
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_76

    .line 17
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7c

    :catchall_76
    move-exception v0

    move-object p1, v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    throw p1

    .line 19
    :cond_7c
    :goto_7c
    iput-object p1, p0, Lcom/google/android/gms/common/internal/i;->h:Landroid/accounts/Account;

    goto :goto_83

    :cond_7f
    iput-object p5, p0, Lcom/google/android/gms/common/internal/i;->e:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/i;->h:Landroid/accounts/Account;

    :goto_83
    iput-object v1, p0, Lcom/google/android/gms/common/internal/i;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object v2, p0, Lcom/google/android/gms/common/internal/i;->g:Landroid/os/Bundle;

    iput-object v4, p0, Lcom/google/android/gms/common/internal/i;->i:[Lv3/c;

    iput-object v3, p0, Lcom/google/android/gms/common/internal/i;->j:[Lv3/c;

    move/from16 p1, p11

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/i;->k:Z

    move/from16 p1, p12

    iput p1, p0, Lcom/google/android/gms/common/internal/i;->l:I

    move/from16 p1, p13

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/i;->m:Z

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/google/android/gms/common/internal/i;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, La/c;->a(Lcom/google/android/gms/common/internal/i;Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
