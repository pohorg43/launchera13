.class public final Lcom/android/launcher3/DragLayerStateTranslationAnimation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/states/OplusBaseLauncherState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;

.field public static final DRAG_LAYER_DEFAULT_SCALE:F = 1.0f

.field public static final DRAG_LAYER_SCALE_IN_OVERVIEW:F = 0.92f

.field private static final TAG:Ljava/lang/String; = "DragLayerStateTranslationAnimation"


# instance fields
.field private final mDragLayer:Lcom/android/launcher3/OplusDragLayer;

.field private final mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->Companion:Lcom/android/launcher3/DragLayerStateTranslationAnimation$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    const-string v0, "launcher.dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    return-void
.end method


# virtual methods
.method public final getMDragLayer()Lcom/android/launcher3/OplusDragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    return-object p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public setState(Lcom/android/launcher3/states/OplusBaseLauncherState;)V
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/states/OPlusBaseState;->getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F

    move-result-object v0

    :goto_a
    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object v3, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/OplusWorkspace;->mDragLayerScale:F

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object v3, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/OplusWorkspace;->mDragLayerScale:F

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_4a

    :cond_33
    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const/4 v3, 0x0

    if-nez v0, :cond_3a

    move v4, v2

    goto :goto_3c

    :cond_3a
    aget v4, v0, v3

    :goto_3c
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-nez v0, :cond_45

    move v3, v2

    goto :goto_47

    :cond_45
    aget v3, v0, v3

    :goto_47
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :goto_4a
    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDismissState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_78

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_78

    :cond_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DragLayerStateTranslationAnimation setState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",but launcher in KeyGuardDismissedService.STATE_LOCK"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DragLayerStateTranslationAnimation"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    :cond_78
    :goto_78
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDomesticLightOS()Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    goto :goto_9b

    :cond_91
    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    if-nez v0, :cond_96

    goto :goto_98

    :cond_96
    aget v2, v0, v3

    :goto_98
    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusDragLayer;->setAlpha(F)V

    :goto_9b
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->setState(Lcom/android/launcher3/states/OplusBaseLauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/states/OplusBaseLauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_b

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/states/OPlusBaseState;->getDragLayerScaleAndAlpha(Lcom/android/launcher3/Launcher;)[F

    move-result-object p1

    :goto_b
    const/4 v1, 0x1

    if-nez p2, :cond_f

    goto :goto_15

    :cond_f
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v0}, Lcom/android/launcher3/states/StateAnimationConfig;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_15
    const/high16 p2, 0x3f800000  # 1.0f

    if-nez p3, :cond_1a

    goto :goto_28

    :cond_1a
    iget-object v2, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    sget-object v3, Lcom/android/launcher3/OplusLauncherAnimUtils;->SCALE:Landroid/util/FloatProperty;

    if-nez p1, :cond_22

    move v4, p2

    goto :goto_25

    :cond_22
    const/4 v4, 0x0

    aget v4, p1, v4

    :goto_25
    invoke-virtual {p3, v2, v3, v4, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :goto_28
    if-nez p3, :cond_2b

    goto :goto_37

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->mDragLayer:Lcom/android/launcher3/OplusDragLayer;

    sget-object v2, Lcom/android/launcher3/OplusLauncherAnimUtils;->ALPHA:Landroid/util/FloatProperty;

    if-nez p1, :cond_32

    goto :goto_34

    :cond_32
    aget p2, p1, v1

    :goto_34
    invoke-virtual {p3, p0, v2, p2, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    :goto_37
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/DragLayerStateTranslationAnimation;->setStateWithAnimation(Lcom/android/launcher3/states/OplusBaseLauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
