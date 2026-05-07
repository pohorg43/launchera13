.class public final Lcom/android/launcher/togglebar/views/ToggleStateToolbar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;

.field private static final TAG:Ljava/lang/String; = "ToggleStateToolbar"

.field private static final TOOL_TIPS_SHOW_TIME:J = 0x64L


# instance fields
.field private mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

.field private mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

.field private mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

.field private mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

.field private mIsToggleBarStateIcon:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mMainPageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSecondaryIv:Landroid/widget/ImageView;

.field private mSecondaryTitle:Landroid/widget/TextView;

.field private mSecondaryTitleContainer:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->Companion:Lcom/android/launcher/togglebar/views/ToggleStateToolbar$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/tooltips/COUIToolTips;Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->showToolTip$lambda-2$lambda-0(Lcom/coui/appcompat/tooltips/COUIToolTips;Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->showToolTip$lambda-2$lambda-1(Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0218

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private static final showToolTip$lambda-2$lambda-0(Lcom/coui/appcompat/tooltips/COUIToolTips;Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V
    .registers 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    iget-object p1, p1, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V
    :try_end_12
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_24

    :catch_13
    move-exception p0

    invoke-virtual {p0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "showWithDirection,exception:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToggleStateToolbar"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method

.method private static final showToolTip$lambda-2$lambda-1(Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_b

    goto :goto_19

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_19

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/GuidePageManager;->hideCardStoreTip(Landroid/content/Context;)V

    :goto_19
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final dismissToolTip()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    :cond_d
    return-void
.end method

.method public final getCardStoreButton()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    return-object p0
.end method

.method public final getDoneButton()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    return-object p0
.end method

.method public final notifyDragButtonState(Z)V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez p1, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/launcher/views/PressFeedbackButton;->setVisibility(I)V

    :goto_d
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez p1, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/views/DragCancelButton;->enableDrop()V

    :goto_15
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitleContainer:Landroid/view/View;

    if-nez p0, :cond_1a

    goto :goto_36

    :cond_1a
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36

    :cond_1e
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez p1, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {p1, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setVisibility(I)V

    :goto_26
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez p1, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/views/DragCancelButton;->disableDrop()V

    :goto_2e
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitleContainer:Landroid/view/View;

    if-nez p0, :cond_33

    goto :goto_36

    :cond_33
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_36
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    sget-object v0, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {v0}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result v0

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    move-object v0, v1

    goto :goto_13

    :cond_f
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_157

    :cond_1e
    if-nez p1, :cond_22

    move-object v0, v1

    goto :goto_2a

    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2a
    const v2, 0x7f0a021a

    const v3, 0x7f0a00c9

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_35

    goto :goto_3d

    :cond_35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_3d

    :goto_3b
    move v2, v5

    goto :goto_48

    :cond_3d
    :goto_3d
    if-nez v0, :cond_40

    goto :goto_47

    :cond_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_47

    goto :goto_3b

    :cond_47
    :goto_47
    move v2, v4

    :goto_48
    if-eqz v2, :cond_aa

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mMainPageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_50

    :cond_4e
    move v0, v4

    goto :goto_5c

    :cond_50
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_58

    move v0, v5

    goto :goto_59

    :cond_58
    move v0, v4

    :goto_59
    if-ne v0, v5, :cond_4e

    move v0, v5

    :goto_5c
    if-eqz v0, :cond_6c

    if-nez p1, :cond_62

    :cond_60
    move p1, v4

    goto :goto_69

    :cond_62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne p1, v3, :cond_60

    move p1, v5

    :goto_69
    if-eqz p1, :cond_6c

    return-void

    :cond_6c
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_71

    goto :goto_7f

    :cond_71
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    if-nez p1, :cond_78

    goto :goto_7f

    :cond_78
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result p1

    if-ne p1, v5, :cond_7f

    move v4, v5

    :cond_7f
    :goto_7f
    if-eqz v4, :cond_82

    return-void

    :cond_82
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_9f

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    return-void

    :cond_9f
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_a5

    goto/16 :goto_157

    :cond_a5
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->onBackPressed()V

    goto/16 :goto_157

    :cond_aa
    const p1, 0x7f0a007f

    if-nez v0, :cond_b1

    goto/16 :goto_157

    :cond_b1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_157

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c3

    return-void

    :cond_c3
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez p1, :cond_c8

    goto :goto_d0

    :cond_c8
    invoke-virtual {p1}, Landroid/widget/Button;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_d0
    const/4 p1, 0x0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result p1

    if-eqz p1, :cond_d8

    return-void

    :cond_d8
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p1

    if-nez p1, :cond_e2

    invoke-virtual {p0, v5}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_e2
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_fe

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isFirstTimeClickCardEntry()Z

    move-result p1

    if-eqz p1, :cond_fe

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_fe
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-nez p1, :cond_108

    invoke-virtual {p0, v5}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void

    :cond_108
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p1

    if-nez p1, :cond_11a

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void

    :cond_11a
    sget-object p1, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/CardManager;->requestPullConfig()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_128

    goto :goto_12d

    :cond_128
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    :goto_12d
    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->startCardStoreActivity(Lcom/android/launcher/Launcher;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_137

    goto :goto_141

    :cond_137
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    if-nez p1, :cond_13e

    goto :goto_141

    :cond_13e
    invoke-virtual {p1, v5, v4}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    :goto_141
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p0, :cond_146

    goto :goto_157

    :cond_146
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_14d

    goto :goto_157

    :cond_14d
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_154

    goto :goto_157

    :cond_154
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_157
    :goto_157
    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a0318

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mMainPageContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a021a

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const v1, 0x7f0a007f

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/views/PressFeedbackButton;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const v1, 0x7f0a00c9

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    const v1, 0x7f0a0463

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0466

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitleContainer:Landroid/view/View;

    const v1, 0x7f0a01eb

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/togglebar/views/DragCancelButton;

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_bc

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0606f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v2, :cond_77

    goto :goto_7a

    :cond_77
    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :goto_7a
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v2, :cond_7f

    goto :goto_82

    :cond_7f
    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :goto_82
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez v2, :cond_87

    goto :goto_8a

    :cond_87
    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :goto_8a
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez v1, :cond_8f

    goto :goto_9d

    :cond_8f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06042b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/views/PressFeedbackButton;->setDisableColor(I)V

    :goto_9d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0606f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-nez v2, :cond_b1

    goto :goto_b4

    :cond_b1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_b4
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v2, :cond_b9

    goto :goto_bc

    :cond_b9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_bc
    :goto_bc
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v1, :cond_c1

    goto :goto_c4

    :cond_c1
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_c4
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-nez v1, :cond_c9

    goto :goto_cc

    :cond_c9
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_cc
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v1, :cond_d1

    goto :goto_d4

    :cond_d1
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_d4
    new-instance v1, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "findViewById(R.id.main_page_container)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0a0465

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.secondary_container)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez v0, :cond_f5

    goto :goto_f9

    :cond_f5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setEnabled(Z)V

    :goto_f9
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result v0

    if-eqz v0, :cond_103

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-eqz v0, :cond_115

    :cond_103
    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v0, :cond_108

    goto :goto_10d

    :cond_108
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setVisibility(I)V

    :goto_10d
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez p0, :cond_112

    goto :goto_115

    :cond_112
    invoke-virtual {p0}, Lcom/android/launcher/views/PressFeedbackButton;->markKeepVisibility()V

    :cond_115
    :goto_115
    return-void
.end method

.method public final onWallpaperBrightnessChanged()V
    .registers 4

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0606f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_27

    :cond_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060703

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_27
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-nez v2, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_2f
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v2, :cond_34

    goto :goto_37

    :cond_34
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v2

    if-eqz v2, :cond_45

    const v2, 0x7f0606f6

    goto :goto_48

    :cond_45
    const v2, 0x7f060431

    :goto_48
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mFinishBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v2, :cond_51

    goto :goto_54

    :cond_51
    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :goto_54
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    if-nez v2, :cond_59

    goto :goto_5c

    :cond_59
    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :goto_5c
    iget-object v2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez v2, :cond_61

    goto :goto_64

    :cond_61
    invoke-virtual {v2, v1}, Lcom/android/launcher/views/PressFeedbackButton;->setDrawableColor(I)V

    :goto_64
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez v1, :cond_69

    goto :goto_81

    :cond_69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_77

    const v0, 0x7f06042b

    goto :goto_7a

    :cond_77
    const v0, 0x7f06042a

    :goto_7a
    invoke-virtual {v2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher/views/PressFeedbackButton;->setDisableColor(I)V

    :goto_81
    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mDragCancelButton:Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-nez p0, :cond_86

    goto :goto_89

    :cond_86
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/DragCancelButton;->onWallpaperBrightnessChanged()V

    :goto_89
    return-void
.end method

.method public setAlpha(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    :goto_e
    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setSecondaryTitle(IZ)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_1f

    :cond_5
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100007

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    iget-boolean p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    if-eq p2, p1, :cond_36

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-nez p1, :cond_28

    goto :goto_34

    :cond_28
    if-eqz p2, :cond_2e

    const v0, 0x7f080592

    goto :goto_31

    :cond_2e
    const v0, 0x7f08059a

    :goto_31
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_34
    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    :cond_36
    return-void
.end method

.method public final setSecondaryTitle(Ljava/lang/String;Z)V
    .registers 4

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    iget-boolean p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    if-eq p2, p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mSecondaryIv:Landroid/widget/ImageView;

    if-nez p1, :cond_17

    goto :goto_23

    :cond_17
    if-eqz p2, :cond_1d

    const v0, 0x7f080592

    goto :goto_20

    :cond_1d
    const v0, 0x7f08059a

    :goto_20
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_23
    iput-boolean p2, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mIsToggleBarStateIcon:Z

    :cond_25
    return-void
.end method

.method public final showToolTip()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    goto :goto_f

    :cond_8
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_f
    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez v0, :cond_17

    goto :goto_1e

    :cond_17
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_1e

    move v2, v1

    :cond_1e
    :goto_1e
    if-eqz v2, :cond_21

    return-void

    :cond_21
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v2, :cond_3d

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12048b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_4b

    :cond_3d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    :goto_4b
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardBtn:Lcom/android/launcher/views/PressFeedbackButton;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/launcher/guide/c;

    invoke-direct {v2, v0, p0}, Lcom/android/launcher/guide/c;-><init>(Lcom/coui/appcompat/tooltips/COUIToolTips;Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Button;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Lcom/android/launcher/guide/j;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/j;-><init>(Lcom/android/launcher/togglebar/views/ToggleStateToolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAddCardToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final startWidgetSheetPanel()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->startWidgetSheetPanel(Z)V

    return-void
.end method

.method public final startWidgetSheetPanel(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    const-string v1, "ToggleStateToolbar"

    if-eqz v0, :cond_1a

    const-string/jumbo p0, "startWidgetSheetPanel but now is already widget state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    move-object v0, v2

    goto :goto_28

    :cond_21
    const v3, 0x7f0a05d8

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_28
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "Exist widget sheet, remove ite, parent = "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3e

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3e
    new-instance v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    if-eqz v3, :cond_50

    move-object v2, v1

    check-cast v2, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    :cond_50
    if-nez v2, :cond_53

    goto :goto_56

    :cond_53
    invoke-virtual {v2, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->setStartByToggleBar(Z)V

    :goto_56
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    if-eqz p1, :cond_63

    const/4 p1, 0x2

    goto :goto_64

    :cond_63
    const/4 p1, -0x1

    :goto_64
    invoke-virtual {v1, v0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statsClickWidgetSetEntrance()V

    return-void
.end method

.method public final toolbarAnimation(FF)Landroid/animation/AnimatorSet;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateView, mainTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", backOpsTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleStateToolbar"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    :cond_2b
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1a1

    sget-object v6, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    const-wide/16 v7, 0xc8

    sget-object p0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->getINTERPOLATOR_DISAPPEAR_TOOLBAR_ALPHA()Landroid/view/animation/PathInterpolator;

    move-result-object v9

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final toolbarAnimation(FFJLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 16

    const-string v0, "hideInterpolator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mainUiExitOrEnterToolbarAnimation, mainTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", backOpsTargetAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleStateToolbar"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    :cond_31
    iget-object v1, p0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v4, 0x1a1

    sget-object v6, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_APPEAR_TOOLBAR_ALPHA:Landroid/view/animation/PathInterpolator;

    move v2, p1

    move v3, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public final toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 18

    move v1, p1

    const-string/jumbo v0, "showInterpolator"

    move-object v5, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hideInterpolator"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mainUiExitOrEnterToolbarAnimation, mainTargetAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", backOpsTargetAlpha = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ToggleStateToolbar"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    :cond_3c
    move-object v0, p0

    iget-object v0, v0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->mAnimationManager:Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher/togglebar/ToggleToolbarAnimManager;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method
