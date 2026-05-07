.class public Lcom/android/launcher3/folder/FolderExtImplV2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/IFolderExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/folder/IFolderExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/folder/IFolderExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALPHA_VISIBLITY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field private static final TAG:Ljava/lang/String; = "FolderExtImpl"

.field private static final VIEW_ALPHA:Landroid/util/FloatProperty;


# instance fields
.field public mContentBackground:Landroid/widget/ImageView;

.field private mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public mFolderRealOpened:Z

.field private mHostView:Lcom/android/launcher3/folder/Folder;

.field public mIsEditingName:Z

.field private mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mToggleBarAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/FolderExtImplV2$1;

    const-string v1, "alpha_visibility"

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderExtImplV2$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderExtImplV2;->ALPHA_VISIBLITY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/launcher3/folder/FolderExtImplV2$2;

    const-string/jumbo v1, "view_alpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderExtImplV2$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderExtImplV2;->VIEW_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderRealOpened:Z

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mIsEditingName:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/FolderExtImplV2;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/FolderExtImplV2;->lambda$startDragLayerAnimation$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher3/folder/FolderExtImplV2;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private closeFolderWithoutAnimation(Landroid/view/View;Landroid/view/View;F)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_71

    :cond_3a
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-interface {p0, p1, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    invoke-interface {p0, p2, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_79

    :cond_51
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->QUICK_SWITCH:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_68

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-interface {p0, p1, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    invoke-interface {p0, p2, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_79

    :cond_68
    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-interface {p0, p1, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    invoke-interface {p0, p2, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_79

    :cond_71
    :goto_71
    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-interface {p0, p1, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    invoke-interface {p0, p2, p3, v1}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    :goto_79
    return-void
.end method

.method public static getCurrentFolder(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/folder/Folder;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/OplusAbstractFloatingView;->getViewFolder(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method private synthetic lambda$startDragLayerAnimation$0(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method


# virtual methods
.method public addDragScrollerTarget()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    instance-of v1, v0, Lcom/android/launcher3/dragndrop/OplusDragController;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragController;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->addDragScrollerTarget(Lcom/android/launcher3/dragndrop/DragScroller;)V

    :cond_f
    return-void
.end method

.method public addInScreen(Landroid/view/View;)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_47

    instance-of v1, v0, Lcom/android/launcher3/OplusHotseat;

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lcom/android/launcher3/OplusHotseat;->hasVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-static {v0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v5, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, p0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v2, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    goto :goto_58

    :cond_47
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/OplusWorkspace;->addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    :goto_58
    return-void
.end method

.method public animateDot()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    :cond_22
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDragLayer;->showGaussianBlurViewForFolder()V

    :cond_27
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->bringToFront()V

    return-void
.end method

.method public closeCompleteEntryPoint()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    instance-of v2, v1, Lcom/android/launcher3/dragndrop/OplusDragController;

    if-eqz v2, :cond_f

    check-cast v1, Lcom/android/launcher3/dragndrop/OplusDragController;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->removeDragScrollerTarget(Lcom/android/launcher3/dragndrop/DragScroller;)V

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v0

    if-gtz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_50
    return-void
.end method

.method public closeCompleteExitPoint()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/OplusWorkspace;->updateVisiblePagesForDrag(ZZ)V

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->onCurrentFolderClosed()V

    sget-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_45

    invoke-virtual {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowUpArrow()V

    goto :goto_59

    :cond_45
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_59
    :goto_59
    return-void
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/folder/IFolderExt;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/android/launcher3/folder/Folder;

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderExtImplV2;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/folder/IFolderExt;

    move-result-object p0

    return-object p0
.end method

.method public doAnimBoosterEnd()V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const-class p0, Lcom/android/launcher3/folder/Folder;

    const-string p0, "Folder"

    invoke-static {v0, p0}, Lcom/android/common/util/FolerUtils;->notifyUiFirstWhenAnimate(ZLjava/lang/String;)V

    const-string p0, "HM_APP_GAP"

    const-string v0, "launcher"

    const-string v1, ".folder_close"

    const-string v2, " end"

    invoke-static {p0, v0, v1, v2}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doUIFirst(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/android/common/util/FolerUtils;->notifySFAnimating(J)V

    const-class p0, Lcom/android/launcher3/folder/Folder;

    const-string p0, "Folder"

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lcom/android/common/util/FolerUtils;->notifyUiFirstWhenAnimate(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/FolerUtils;->notifyORMSFolderOpenOrClose()V

    return-void
.end method

.method public enableFeatureTraceLauncherLayout(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    const-string v0, " to Folder{title="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}, source="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v0, "onDrop"

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/TraceLog;->traceAction(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method public fadeGaussianBlurState(Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/FolderExtImplV2;->startDragLayerAnimation(ZZ)V

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/OplusDragLayer;->hideGaussianBlurViewForFolder(ZZ)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_25

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_25
    return-void
.end method

.method public folderAnimEndExitPoint()V
    .registers 5

    const-class v0, Lcom/android/launcher3/folder/Folder;

    const-string v0, "Folder"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/common/util/FolerUtils;->notifyUiFirstWhenAnimate(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderBackgroundAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    check-cast v0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->onFolderOpenAnimationEnd()V

    const-string v0, "HM_APP_GAP"

    const-string v1, "launcher"

    const-string v2, ".folder_open"

    const-string v3, " end"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->updateFolderOpenInDragging()V

    return-void
.end method

.method public folderAnimStartEntryPoint()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/folder/Folder;->mState:I

    const-string v0, "HM_APP_GAP"

    const-string v1, "launcher"

    const-string v2, ".folder_close"

    const-string v3, " begin"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderBackgroundAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_22
    return-void
.end method

.method public getContentBackground()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mContentBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getFolderAnimationManager()Landroid/animation/AnimatorSet;
    .registers 3

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method

.method public getHostView()Lcom/android/launcher3/folder/Folder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public initFolderAnimationManager()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    :cond_e
    return-void
.end method

.method public isAnimating()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isFolderRealOpened()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderRealOpened:Z

    return p0
.end method

.method public isFull()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isOpenedOrAnimating()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget p0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v1, 0x2

    if-ne p0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    :goto_c
    return v0
.end method

.method public layoutChildren()V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_61

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5e

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v8

    iget-object v8, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v5, v9, v8}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v8

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    add-int/2addr v5, v8

    add-int v9, v1, v6

    invoke-virtual {v4, v8, v1, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v4, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v4

    add-int/2addr v6, v1

    move v1, v6

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_61
    return-void
.end method

.method public mapOverItemsSpecialForCurrentPageItem(Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v1, v0, [Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_1d

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v4, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    move v3, v2

    :goto_26
    if-ge v3, v0, :cond_53

    aget-object v4, v1, v3

    if-eqz p2, :cond_30

    if-ne v4, p0, :cond_30

    const/4 v5, 0x1

    goto :goto_31

    :cond_30
    move v5, v2

    :goto_31
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_3a
    if-ge v7, v6, :cond_50

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v9, v8, v5}, Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v8

    if-eqz v8, :cond_4d

    return-void

    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_53
    return-void
.end method

.method public onDragExitExitPoint()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-direct {v0, v2, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderBackgroundAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_19
    return-void
.end method

.method public onDragStartExitPoint()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    :cond_e
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderAninatorManager:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderBackgroundAnimatorSet(Z)Landroid/animation/AnimatorSet;

    move-result-object p0

    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1a
    return-void
.end method

.method public onDropExitPoint()V
    .registers 1

    return-void
.end method

.method public onFinishInflateEntryPoint()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    const v1, 0x7f0a023c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mContentBackground:Landroid/widget/ImageView;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public reLayoutChildren()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderExtImplV2;->layoutChildren()V

    return-void
.end method

.method public setFolderRealOpened(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mFolderRealOpened:Z

    return-void
.end method

.method public showItems(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_34

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showItem: view is null, info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FolderExtImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_34
    return-void
.end method

.method public startDragLayerAnimation(ZZ)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarView()Lcom/android/launcher/togglebar/ToggleBarRootView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->getCardStoreButton()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_28

    const/4 p1, 0x0

    goto :goto_2a

    :cond_28
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_2a
    if-eqz p2, :cond_119

    new-instance p2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p2, p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v3, 0x4395cf35

    invoke-virtual {p2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const v4, 0x3f5d14e4  # 0.8636f

    invoke-virtual {p2, v4}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    new-instance v5, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v6, Lcom/android/launcher3/folder/FolderExtImplV2;->ALPHA_VISIBLITY:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v5, v2, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-virtual {v5, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_c6

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    invoke-static {p2}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result p2

    if-eqz p2, :cond_64

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_64
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v5, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object p2

    sget-object v5, Lcom/android/launcher3/folder/FolderExtImplV2;->VIEW_ALPHA:Landroid/util/FloatProperty;

    invoke-virtual {p2, v1, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance v1, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v7, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->build(Ljava/lang/Object;Landroid/util/FloatProperty;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 p2, 0x1

    aput-object v0, v3, p2

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/folder/FolderExtImplV2$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/FolderExtImplV2$3;-><init>(Lcom/android/launcher3/folder/FolderExtImplV2;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mToggleBarAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-interface {p0, v2, p1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_11c

    :cond_c6
    iget-object v3, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-eqz v3, :cond_103

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_e3

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_e3

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_e3
    iput-object p2, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mPagePreviewAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/android/launcher/w;

    invoke-direct {v2, p0}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher3/folder/FolderExtImplV2;)V

    invoke-virtual {p2, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-interface {p0, v1, p1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result p2

    if-eqz p2, :cond_11c

    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-nez p2, :cond_11c

    invoke-interface {p0, v0, p1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_11c

    :cond_103
    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    invoke-interface {p0, v1, p1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    invoke-interface {p0, v2, p1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCard()Z

    move-result p2

    if-eqz p2, :cond_11c

    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-nez p2, :cond_11c

    invoke-interface {p0, v0, p1, v6}, Lcom/android/launcher3/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    goto :goto_11c

    :cond_119
    invoke-direct {p0, v1, v2, p1}, Lcom/android/launcher3/folder/FolderExtImplV2;->closeFolderWithoutAnimation(Landroid/view/View;Landroid/view/View;F)V

    :cond_11c
    :goto_11c
    return-void
.end method

.method public updateDoteState()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderExtImplV2;->mHostView:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/folder/FolderIcon;->updateDotScale(ZZ)V

    :cond_12
    return-void
.end method
