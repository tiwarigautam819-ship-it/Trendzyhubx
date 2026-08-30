###### Class com.getcapacitor.NativePlugin (com.getcapacitor.NativePlugin)
.class public interface abstract annotation Lcom/getcapacitor/NativePlugin;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/getcapacitor/NativePlugin;
        name = ""
        permissionRequestCode = 0x2328
        permissions = {}
        requestCodes = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract name()Ljava/lang/String;
.end method

.method public abstract permissionRequestCode()I
.end method

.method public abstract permissions()[Ljava/lang/String;
.end method

.method public abstract requestCodes()[I
.end method
