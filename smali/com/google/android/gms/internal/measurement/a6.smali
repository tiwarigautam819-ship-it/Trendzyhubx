###### Class com.google.android.gms.internal.measurement.a6 (com.google.android.gms.internal.measurement.a6)
.class public final Lcom/google/android/gms/internal/measurement/a6;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;
.implements Lcom/google/android/gms/internal/measurement/w6;


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/a6;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/a6;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/a6;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/internal/measurement/a6;->b:Lcom/google/android/gms/internal/measurement/a6;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/a6;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/measurement/n4;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_58

    .line 8
    .line 9
    :try_start_8
    filled-new-array {p1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_2a
    .catchall {:try_start_8 .. :try_end_13} :catchall_27

    .line 20
    if-eqz p0, :cond_38

    .line 21
    .line 22
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_30

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_2d

    .line 33
    :try_start_20
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_2a
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    move-object p0, v0

    .line 42
    goto :goto_54

    .line 43
    :catch_2a
    move-exception v0

    .line 44
    move-object p0, v0

    .line 45
    goto :goto_4c

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    move-object p1, v0

    .line 48
    goto :goto_40

    .line 49
    :cond_30
    :try_start_30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_2a
    .catchall {:try_start_30 .. :try_end_33} :catchall_27

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_38
    :try_start_38
    new-instance p1, Lcom/google/android/gms/internal/measurement/t4;

    .line 58
    .line 59
    const-string v0, "ContentProvider query returned null cursor"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_2d

    .line 65
    :goto_40
    if-eqz p0, :cond_4b

    .line 66
    .line 67
    :try_start_42
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    .line 68
    .line 69
    .line 70
    goto :goto_4b

    .line 71
    :catchall_46
    move-exception v0

    .line 72
    move-object p0, v0

    .line 73
    :try_start_48
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :cond_4b
    :goto_4b
    throw p1
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4c} :catch_2a
    .catchall {:try_start_48 .. :try_end_4c} :catchall_27

    .line 77
    :goto_4c
    :try_start_4c
    new-instance p1, Lcom/google/android/gms/internal/measurement/t4;

    .line 78
    .line 79
    const-string v0, "ContentProvider query failed"

    .line 80
    .line 81
    invoke-direct {p1, v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p1
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_27

    .line 85
    :goto_54
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 86
    .line 87
    .line 88
    throw p0

    .line 89
    :cond_58
    new-instance p0, Lcom/google/android/gms/internal/measurement/t4;

    .line 90
    .line 91
    const-string p1, "Unable to acquire ContentProviderClient"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public static d(Landroid/content/ContentResolver;[Ljava/lang/String;Lcom/google/android/gms/internal/measurement/a6;)Ljava/util/HashMap;
    .registers 10

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/measurement/n4;->b:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_6f

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v5, p1

    .line 13
    :try_start_c
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_44
    .catchall {:try_start_c .. :try_end_10} :catchall_41

    .line 17
    if-eqz p0, :cond_4f

    .line 18
    .line 19
    :try_start_12
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    new-instance p2, Ljava/util/HashMap;

    .line 24
    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-direct {p2, p1, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 28
    .line 29
    .line 30
    :goto_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_34

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    goto :goto_1d

    .line 50
    :catchall_31
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    goto :goto_57

    .line 53
    :cond_34
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    .line 54
    .line 55
    .line 56
    move-result p1
    :try_end_38
    .catchall {:try_start_12 .. :try_end_38} :catchall_31

    .line 57
    if-eqz p1, :cond_47

    .line 58
    .line 59
    :try_start_3a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_44
    .catchall {:try_start_3a .. :try_end_3d} :catchall_41

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 63
    .line 64
    .line 65
    return-object p2

    .line 66
    :catchall_41
    move-exception v0

    .line 67
    move-object p0, v0

    .line 68
    goto :goto_6b

    .line 69
    :catch_44
    move-exception v0

    .line 70
    move-object p0, v0

    .line 71
    goto :goto_63

    .line 72
    :cond_47
    :try_start_47
    new-instance p1, Lcom/google/android/gms/internal/measurement/t4;

    .line 73
    .line 74
    const-string p2, "Cursor read incomplete (ContentProvider dead?)"

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_4f
    new-instance p1, Lcom/google/android/gms/internal/measurement/t4;

    .line 81
    .line 82
    const-string p2, "ContentProvider query returned null cursor"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_31

    .line 88
    :goto_57
    if-eqz p0, :cond_62

    .line 89
    .line 90
    :try_start_59
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    .line 91
    .line 92
    .line 93
    goto :goto_62

    .line 94
    :catchall_5d
    move-exception v0

    .line 95
    move-object p0, v0

    .line 96
    :try_start_5f
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_62
    :goto_62
    throw p1
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_63} :catch_44
    .catchall {:try_start_5f .. :try_end_63} :catchall_41

    .line 100
    :goto_63
    :try_start_63
    new-instance p1, Lcom/google/android/gms/internal/measurement/t4;

    .line 101
    .line 102
    const-string p2, "ContentProvider query failed"

    .line 103
    .line 104
    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw p1
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_41

    .line 108
    :goto_6b
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_6f
    new-instance p0, Lcom/google/android/gms/internal/measurement/t4;

    .line 113
    .line 114
    const-string p1, "Unable to acquire ContentProviderClient"

    .line 115
    .line 116
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/a7;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_46

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "This should never be called."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1

    .line 14
    :pswitch_d
    const-class v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_36

    .line 21
    .line 22
    :try_start_15
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/z5;->d(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/z5;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/z5;->e(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/android/gms/internal/measurement/a7;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_25

    .line 36
    .line 37
    return-object v0

    .line 38
    :catch_25
    move-exception v0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v2, "Unable to get message info for "

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "Unsupported message type: "

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public b(Ljava/lang/Class;)Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/a6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_e

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :pswitch_7
    const-class v0, Lcom/google/android/gms/internal/measurement/z5;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
