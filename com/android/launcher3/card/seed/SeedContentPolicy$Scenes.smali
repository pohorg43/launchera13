.class public interface abstract annotation Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/seed/SeedContentPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Scenes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes$Companion;

.field public static final HAS1X2:I = 0x2

.field public static final HAS1X2AND2X2:I = 0x8

.field public static final HAS1X2WITH2:I = 0x10

.field public static final HAS2X2:I = 0x4

.field public static final HAS_NOTHING:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes$Companion;->$$INSTANCE:Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes$Companion;

    sput-object v0, Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes;->Companion:Lcom/android/launcher3/card/seed/SeedContentPolicy$Scenes$Companion;

    return-void
.end method
