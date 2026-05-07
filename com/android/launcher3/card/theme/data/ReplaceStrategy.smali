.class public interface abstract annotation Lcom/android/launcher3/card/theme/data/ReplaceStrategy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final CARD_TO_CARD:Ljava/lang/String; = "card#card"

.field public static final CARD_TO_WIDGET:Ljava/lang/String; = "card#appwidget"

.field public static final Companion:Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;

.field public static final WIDGET_TO_CARD:Ljava/lang/String; = "appwidget#card"

.field public static final WIDGET_TO_WIDET:Ljava/lang/String; = "appwidget#appwidget"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;->$$INSTANCE:Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;

    sput-object v0, Lcom/android/launcher3/card/theme/data/ReplaceStrategy;->Companion:Lcom/android/launcher3/card/theme/data/ReplaceStrategy$Companion;

    return-void
.end method
