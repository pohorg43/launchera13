.class public interface abstract annotation Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragResultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RESULT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CANCEL:I = 0x2

.field public static final Companion:Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT$Companion;

.field public static final FAIL:I = 0x1

.field public static final SUCCESS:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT$Companion;->$$INSTANCE:Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT$Companion;

    sput-object v0, Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT;->Companion:Lcom/android/launcher3/dragndrop/DragResultInfo$RESULT$Companion;

    return-void
.end method
