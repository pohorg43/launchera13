.class public final Lcom/android/launcher/folder/download/view/FolderDotAnimManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;

.field private static final DOT_DURATION:J = 0x15eL

.field private static final MAX_ALPHA:J = 0xffL

.field private static final MAX_FRACTION:F = 1.0f

.field private static final MIN_ALPHA:J = 0x0L

.field private static final MIN_FRACTION:F = 0.0f

.field public static final TAG:Ljava/lang/String; = "FolderDotAnimManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;->Companion:Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final startDotAnim(Lcom/android/launcher/folder/download/view/RecommendDotDrawable;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/folder/download/view/FolderDotAnimManager;->Companion:Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/folder/download/view/FolderDotAnimManager$Companion;->startDotAnim(Lcom/android/launcher/folder/download/view/RecommendDotDrawable;)V

    return-void
.end method
