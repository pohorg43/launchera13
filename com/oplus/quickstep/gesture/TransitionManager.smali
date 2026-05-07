.class public final Lcom/oplus/quickstep/gesture/TransitionManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/TransitionManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;


# instance fields
.field private mFloatingIconViewContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

.field private mFolderTransition:Lcom/android/launcher3/folder/FolderTransition;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/views/FloatingIconViewContainer;)V
    .registers 3

    const-string v0, "floatingIconViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFloatingIconViewContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

    return-void
.end method

.method public static final calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/android/launcher3/Workspace<",
            "*>;I",
            "Lcom/android/launcher3/views/FloatingIconViewContainer;",
            "F)I"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->calculateScrollOffset(ZZLcom/android/launcher3/Workspace;ILcom/android/launcher3/views/FloatingIconViewContainer;F)I

    move-result p0

    return p0
.end method

.method public static final isHotseatIcon(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/gesture/TransitionManager;->Companion:Lcom/oplus/quickstep/gesture/TransitionManager$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/TransitionManager$Companion;->isHotseatIcon(Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final alphaChanged(FI)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFolderTransition:Lcom/android/launcher3/folder/FolderTransition;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/FolderTransition;->setFolderAlpha(FI)V

    :goto_8
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFloatingIconViewContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/FloatingIconViewContainer;->alphaChanged(FI)V

    return-void
.end method

.method public final clearFolderTransition()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFolderTransition:Lcom/android/launcher3/folder/FolderTransition;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderTransition;->finish()V

    :goto_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFolderTransition:Lcom/android/launcher3/folder/FolderTransition;

    return-void
.end method

.method public final doTranslationIfNeeded(I)V
    .registers 3

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->isCurrentNormalEffect()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFloatingIconViewContainer:Lcom/android/launcher3/views/FloatingIconViewContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->doTranslationIfNeeded()V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFolderTransition:Lcom/android/launcher3/folder/FolderTransition;

    if-nez p0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderTransition;->doTransitionIfNeeded(I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public final setFolderTransition(Lcom/android/launcher3/folder/FolderTransition;)V
    .registers 3

    const-string v0, "folderTransition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/TransitionManager;->mFolderTransition:Lcom/android/launcher3/folder/FolderTransition;

    return-void
.end method
