.class public interface abstract annotation Lcom/android/launcher3/card/seed/SeedConstants;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/SeedConstants$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/seed/SeedConstants$Companion;

.field public static final UNREGISTER_ALL:I = 0x2

.field public static final UNREGISTER_ENTRANCE:I = 0x1

.field public static final UNREGISTER_SPECIFIED:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/seed/SeedConstants$Companion;->$$INSTANCE:Lcom/android/launcher3/card/seed/SeedConstants$Companion;

    sput-object v0, Lcom/android/launcher3/card/seed/SeedConstants;->Companion:Lcom/android/launcher3/card/seed/SeedConstants$Companion;

    return-void
.end method
