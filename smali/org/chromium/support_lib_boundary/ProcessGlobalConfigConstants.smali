###### Class org.chromium.support_lib_boundary.ProcessGlobalConfigConstants (org.chromium.support_lib_boundary.ProcessGlobalConfigConstants)
.class public final Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants$ProcessGlobalConfigMapKey;
    }
.end annotation


# static fields
.field public static final CACHE_DIRECTORY_BASE_PATH:Ljava/lang/String; = "CACHE_DIRECTORY_BASE_PATH"

.field public static final CONFIGURE_PARTITIONED_COOKIES:Ljava/lang/String; = "CONFIGURE_PARTITIONED_COOKIES"

.field public static final DATA_DIRECTORY_BASE_PATH:Ljava/lang/String; = "DATA_DIRECTORY_BASE_PATH"

.field public static final DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "DATA_DIRECTORY_SUFFIX"

###### Class org.chromium.support_lib_boundary.ProcessGlobalConfigConstants.ProcessGlobalConfigMapKey (org.chromium.support_lib_boundary.ProcessGlobalConfigConstants$ProcessGlobalConfigMapKey)
.class public interface abstract annotation Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants$ProcessGlobalConfigMapKey;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/support_lib_boundary/ProcessGlobalConfigConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ProcessGlobalConfigMapKey"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
