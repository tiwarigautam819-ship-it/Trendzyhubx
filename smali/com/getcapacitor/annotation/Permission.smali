###### Class com.getcapacitor.annotation.Permission (com.getcapacitor.annotation.Permission)
.class public interface abstract annotation Lcom/getcapacitor/annotation/Permission;
.super Ljava/lang/Object;
.source "r8-map-id-e80f248db6611fe3d3090b90a358712397ddee60c8b63ccc605018033ad715b6"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/getcapacitor/annotation/Permission;
        alias = ""
        strings = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract alias()Ljava/lang/String;
.end method

.method public abstract strings()[Ljava/lang/String;
.end method
