###### Class com.google.android.gms.internal.measurement.i6 (com.google.android.gms.internal.measurement.i6)
.class public Lcom/google/android/gms/internal/measurement/i6;
.super Ljava/io/IOException;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static a()Lcom/google/android/gms/internal/measurement/i6;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/i6;

    .line 2
    .line 3
    const-string v1, "Protocol message had invalid UTF-8."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/measurement/i6;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/i6;

    .line 2
    .line 3
    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/i6;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/i6;

    .line 2
    .line 3
    const-string v1, "Failed to parse the message."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/measurement/i6;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/i6;

    .line 2
    .line 3
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
