.class public interface abstract annotation Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SOURCE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final ASSISTANT:I = 0x3

.field public static final Companion:Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE$Companion;

.field public static final LAUNCHER:I = 0x2

.field public static final STORE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE$Companion;->$$INSTANCE:Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE$Companion;

    sput-object v0, Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE;->Companion:Lcom/android/launcher3/dragndrop/DragCardInfo$SOURCE$Companion;

    return-void
.end method
