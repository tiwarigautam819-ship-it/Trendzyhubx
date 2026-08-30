###### Class com.google.android.gms.internal.measurement.n0 (com.google.android.gms.internal.measurement.n0)
.class public abstract Lcom/google/android/gms/internal/measurement/n0;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 1
    sget v0, Lcom/google/android/gms/internal/measurement/m0;->c:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_7

    .line 5
    .line 6
    :goto_5
    move-object p2, v0

    .line 7
    goto :goto_10

    .line 8
    :cond_7
    const-string v1, ""

    .line 9
    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_10

    .line 15
    .line 16
    goto :goto_5

    .line 17
    :cond_10
    :goto_10
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
