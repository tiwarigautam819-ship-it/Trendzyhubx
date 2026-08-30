###### Class com.google.android.gms.internal.measurement.o8 (com.google.android.gms.internal.measurement.o8)
.class public final Lcom/google/android/gms/internal/measurement/o8;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lq4/d;


# static fields
.field public static final b:Lcom/google/android/gms/internal/measurement/o8;


# instance fields
.field public final a:Lq4/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/o8;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/o8;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/o8;->b:Lcom/google/android/gms/internal/measurement/o8;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/q8;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lq4/g;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lq4/g;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/o8;->a:Lq4/g;

    .line 15
    .line 16
    return-void
.end method

.method public static a()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/o8;->b:Lcom/google/android/gms/internal/measurement/o8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/o8;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/o8;->a:Lq4/g;

    .line 2
    .line 3
    iget-object v0, v0, Lq4/g;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/measurement/r8;

    .line 6
    .line 7
    return-object v0
.end method
