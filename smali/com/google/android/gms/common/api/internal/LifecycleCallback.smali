###### Class com.google.android.gms.common.api.internal.LifecycleCallback (com.google.android.gms.common.api.internal.LifecycleCallback)
.class public Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# direct methods
.method private static getChimeraLifecycleFragmentImpl(Lx3/e;)Lx3/f;
    .registers 2

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string v0, "Method not available in SDK."

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
