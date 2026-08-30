###### Class org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface (org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface)
.class public interface abstract Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Lorg/chromium/support_lib_boundary/FeatureFlagHolderBoundaryInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface$WebMessagePayloadType;
    }
.end annotation


# virtual methods
.method public abstract getAsArrayBuffer()[B
.end method

.method public abstract getAsString()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

###### Class org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface.WebMessagePayloadType (org.chromium.support_lib_boundary.WebMessagePayloadBoundaryInterface$WebMessagePayloadType)
.class public interface abstract annotation Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface$WebMessagePayloadType;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/support_lib_boundary/WebMessagePayloadBoundaryInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "WebMessagePayloadType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_ARRAY_BUFFER:I = 0x1

.field public static final TYPE_STRING:I
