.class public interface abstract annotation Lcom/android/launcher3/card/theme/data/ElementType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/data/ElementType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CARD:Ljava/lang/String; = "card"

.field public static final Companion:Lcom/android/launcher3/card/theme/data/ElementType$Companion;

.field public static final WIDGET:Ljava/lang/String; = "appwidget"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/ElementType$Companion;->$$INSTANCE:Lcom/android/launcher3/card/theme/data/ElementType$Companion;

    sput-object v0, Lcom/android/launcher3/card/theme/data/ElementType;->Companion:Lcom/android/launcher3/card/theme/data/ElementType$Companion;

    return-void
.end method
