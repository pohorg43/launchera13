.class public Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;
.super Lcom/android/launcher3/popup/PopupContainerWithArrow;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/PopupContainerWithArrow<",
        "Lcom/android/launcher/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION_CLOSE_ALPHA_WITH_CARD:J = 0x14dL

.field private static final DURATION_POPUP_ALPHA:I = 0xfa

.field private static final DURATION_POPUP_ALPHA_WITH_CARD:J = 0x2eeL

.field private static final DURATION_POPUP_SCALE:I = 0x14a

.field public static final SHORTCUT_TYPE_NONE:I = -0x1

.field public static final SHORTCUT_TYPE_NORMAL:I = 0x0

.field public static final SHORTCUT_TYPE_WITH_CARD:I = 0x1

.field private static final SYSTEM_SHORTCUT_ALPHA:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "OplusPopupContainerWithArrow"

.field private static sIsPopupDismissed:Z = true


# instance fields
.field public mAppShortcutContainer:Landroid/widget/LinearLayout;

.field public mAppShortcutInnerContainer:Landroid/widget/LinearLayout;

.field private mDragStarted:Z

.field private mHaveAppAndSystemShortcuts:Z

.field private mIsNotReversed:Z

.field public mLongPressedView:Landroid/view/View;

.field private mNeedShowCardPreview:Z

.field private final mOnCloseCallbackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

.field private final mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

.field private final mTouchDownLocation:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    new-instance p1, Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-direct {p1}, Lcom/android/launcher3/popup/PopupLauncherStateListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsNotReversed:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    new-instance p1, Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-direct {p1}, Lcom/android/launcher3/popup/PopupLauncherStateListener;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsNotReversed:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static closeOpenContainer(Lcom/android/launcher/Launcher;)V
    .registers 2

    const/16 v0, 0xb4

    invoke-static {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;I)V

    return-void
.end method

.method public static closeOpenContainer(Lcom/android/launcher/Launcher;I)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_b
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/OplusDragView;->removeWithAnim(I)V

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->showOriginalIconOpsAhead()V

    return-void
.end method

.method public static closeOpenContainerImmediately(Lcom/android/launcher/Launcher;)V
    .registers 3

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_b
    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragView;->remove()V

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->showOriginalIconOpsAhead()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->lambda$getOpenCloseAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getOriginalFolderIconBounds(Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;)V
    .registers 4

    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getRealFolderIconBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    :cond_18
    return-void
.end method

.method private getOriginalIconBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1c
    return-void
.end method

.method private getOriginalRealIconBounds(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1e

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getRealIconBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1e
    return-void
.end method

.method public static getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;
    .registers 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getAnyView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->lambda$getOpenCloseAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->lambda$showForIcon$0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private isInShortcutArea(Landroid/graphics/PointF;)Z
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_54

    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1b

    :cond_15
    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v2, :cond_1d

    if-nez v1, :cond_1d

    :cond_1b
    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v0

    :goto_1e
    if-eqz v2, :cond_21

    goto :goto_51

    :cond_21
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v2, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_51

    return v3

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_54
    return v0
.end method

.method public static isPopupDismissed()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    return v0
.end method

.method private isPressIconInMiddleOddColumn()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v1, v3, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    goto :goto_38

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    :goto_38
    rem-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_43

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    div-int/lit8 p0, p0, 0x2

    if-ne v0, p0, :cond_43

    const/4 v2, 0x1

    :cond_43
    return v2
.end method

.method private isSystemShortcutHorizontalWithText()Z
    .registers 1

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez p0, :cond_d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getOpenCloseAnimator$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$getOpenCloseAnimator$2(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_29

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v2, :cond_1a

    goto :goto_26

    :cond_1a
    iget-boolean v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_29
    return-void
.end method

.method private static synthetic lambda$showForIcon$0(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$Factory;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private orientAboutCard()V
    .registers 15

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070a49

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    div-int/lit8 v8, v1, 0x2

    add-int v9, v7, v3

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v10

    const/4 v11, 0x1

    if-le v9, v10, :cond_40

    move v9, v11

    goto :goto_41

    :cond_40
    move v9, v0

    :goto_41
    iput-boolean v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v9, :cond_4a

    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    :cond_4a
    iget-object v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v6, v8

    iget v10, v5, Landroid/graphics/Rect;->left:I

    if-le v9, v10, :cond_68

    add-int/2addr v6, v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    iget v10, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v10

    if-ge v6, v8, :cond_68

    iput-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget v0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v0

    goto/16 :goto_e3

    :cond_68
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget-object v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    add-int v9, v8, v1

    iget v10, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRight()I

    move-result v10

    iget v12, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v12

    if-ge v9, v10, :cond_81

    move v9, v11

    goto :goto_82

    :cond_81
    move v9, v0

    :goto_82
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v10

    iget v12, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v12

    if-le v6, v10, :cond_8d

    move v10, v11

    goto :goto_8e

    :cond_8d
    move v10, v0

    :goto_8e
    if-eqz v9, :cond_99

    iget-boolean v9, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v9, :cond_97

    if-eqz v10, :cond_97

    goto :goto_99

    :cond_97
    move v9, v8

    goto :goto_9a

    :cond_99
    :goto_99
    move v9, v6

    :goto_9a
    if-ne v9, v8, :cond_9e

    move v10, v11

    goto :goto_9f

    :cond_9e
    move v10, v0

    :goto_9f
    iput-boolean v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v12, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v12

    iget v12, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v12

    iput v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v3, v7

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v12

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    if-le v3, v12, :cond_e3

    const/16 v3, 0x10

    iput v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v8, v10

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    sub-int/2addr v6, v10

    sub-int/2addr v6, v3

    iget-boolean v3, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v3, :cond_d4

    add-int/2addr v1, v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    if-ge v1, v3, :cond_d1

    iput-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_e0

    :cond_d1
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_dc

    :cond_d4
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    if-le v6, v1, :cond_de

    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_dc
    move v9, v6

    goto :goto_e1

    :cond_de
    iput-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_e0
    move v9, v8

    :goto_e1
    iput-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    :cond_e3
    :goto_e3
    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_f0

    goto :goto_f1

    :cond_f0
    neg-int v2, v2

    :goto_f1
    add-int/2addr v9, v2

    int-to-float v0, v9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    return-void

    :cond_f7
    int-to-float v0, v9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_11d

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v1, p0

    iget p0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_126

    :cond_11d
    const/16 p0, 0x30

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget p0, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, p0

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_126
    return-void
.end method

.method private orientAboutIcon()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070a49

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v2

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRight()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v10, Lcom/android/launcher/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_4e

    sget-boolean v10, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v10, :cond_4e

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getRight()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-static {v10, v11}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v10

    sub-int/2addr v9, v10

    :cond_4e
    add-int v10, v8, v2

    iget v12, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v12

    iget v12, v6, Landroid/graphics/Rect;->right:I

    sub-int v12, v9, v12

    if-ge v10, v12, :cond_5b

    move v10, v11

    goto :goto_5c

    :cond_5b
    move v10, v1

    :goto_5c
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v12

    iget v13, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    if-le v7, v12, :cond_67

    move v12, v11

    goto :goto_68

    :cond_67
    move v12, v1

    :goto_68
    if-eqz v10, :cond_73

    iget-boolean v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v10, :cond_71

    if-eqz v12, :cond_71

    goto :goto_73

    :cond_71
    move v10, v8

    goto :goto_74

    :cond_73
    :goto_73
    move v10, v7

    :goto_74
    if-ne v10, v8, :cond_78

    move v12, v11

    goto :goto_79

    :cond_78
    move v12, v1

    :goto_79
    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget-object v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget-object v14, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v15

    iget v11, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v15, v11

    if-le v14, v15, :cond_97

    const/4 v15, 0x1

    goto :goto_98

    :cond_97
    move v15, v1

    :goto_98
    iput-boolean v15, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v15, :cond_a3

    iget-object v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v13

    add-int/2addr v11, v3

    goto :goto_a5

    :cond_a3
    sub-int v11, v14, v11

    :goto_a5
    iget v13, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v13

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v4, v11

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v13

    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    if-lt v4, v13, :cond_de

    const/16 v4, 0x10

    iput v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v8, v12

    iget v4, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v4

    sub-int/2addr v7, v12

    sub-int/2addr v7, v4

    iget-boolean v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v4, :cond_ce

    add-int v4, v8, v2

    if-ge v4, v9, :cond_ca

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_db

    :cond_ca
    const/4 v4, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_d7

    :cond_ce
    const/4 v4, 0x1

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    if-le v7, v5, :cond_d9

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_d7
    move v10, v7

    goto :goto_dc

    :cond_d9
    iput-boolean v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_db
    move v10, v8

    :goto_dc
    iput-boolean v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    :cond_de
    iget v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v4}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v4

    if-eqz v4, :cond_f2

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_eb

    goto :goto_ec

    :cond_eb
    neg-int v3, v3

    :goto_ec
    add-int/2addr v10, v3

    int-to-float v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    return-void

    :cond_f2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPressIconInMiddleOddColumn()Z

    move-result v3

    if-eqz v3, :cond_107

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    goto :goto_10b

    :cond_107
    int-to-float v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    :goto_10b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_12d

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_133

    :cond_12d
    const/16 v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_133
    return-void
.end method

.method private orientAboutPendingCard()V
    .registers 16

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMinCardSize()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v7}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v9

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v9

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v2

    iget-object v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v2

    sget-object v10, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v11, 0x1

    if-ne v2, v10, :cond_53

    move v2, v11

    goto :goto_54

    :cond_53
    move v2, v0

    :goto_54
    iget-object v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v5

    sub-int/2addr v10, v8

    const/4 v12, -0x1

    if-le v10, v9, :cond_6a

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v10

    iget-object v13, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v13

    if-eqz v2, :cond_6b

    sub-int/2addr v10, v7

    goto :goto_6b

    :cond_6a
    move v10, v12

    :cond_6b
    :goto_6b
    if-eqz v7, :cond_a1

    if-ne v10, v12, :cond_86

    iget-object v13, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v13, v6

    sub-int/2addr v14, v7

    sub-int/2addr v14, v8

    if-le v14, v9, :cond_86

    add-int/2addr v13, v7

    if-ge v13, v4, :cond_86

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v10

    iget-object v13, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v13

    sub-int/2addr v10, v7

    :cond_86
    if-ne v10, v12, :cond_a1

    iget-object v13, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int v14, v13, v7

    sub-int/2addr v14, v8

    if-le v14, v9, :cond_a1

    add-int/2addr v13, v6

    add-int/2addr v13, v7

    if-ge v13, v4, :cond_a1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    iget-object v10, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v10

    sub-int/2addr v1, v6

    sub-int v10, v1, v7

    :cond_a1
    if-eq v10, v12, :cond_ac

    iput-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    iget-boolean v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsNotReversed:Z

    if-eqz v1, :cond_ac

    iput-boolean v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mIsNotReversed:Z

    return-void

    :cond_ac
    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v1, :cond_e6

    if-ne v10, v12, :cond_c0

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    add-int/2addr v5, v8

    if-ge v5, v4, :cond_c0

    if-eqz v2, :cond_bf

    sub-int v10, v1, v7

    goto :goto_c0

    :cond_bf
    move v10, v1

    :cond_c0
    :goto_c0
    if-eqz v7, :cond_e6

    if-ne v10, v12, :cond_d5

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int v5, v2, v7

    if-le v5, v9, :cond_d5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    add-int/2addr v1, v7

    add-int/2addr v1, v8

    if-ge v1, v4, :cond_d5

    sub-int/2addr v2, v7

    move v10, v2

    :cond_d5
    if-ne v10, v12, :cond_e6

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v6

    sub-int/2addr v2, v7

    if-le v2, v9, :cond_e6

    add-int/2addr v8, v1

    if-ge v8, v4, :cond_e6

    sub-int/2addr v1, v6

    sub-int v10, v1, v7

    :cond_e6
    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v1, v4, :cond_112

    const v0, 0x800003

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto/16 :goto_188

    :cond_112
    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v1, v4, :cond_15e

    const v1, 0x800005

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070a04

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_136

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v11

    goto :goto_137

    :cond_136
    move v1, v0

    :goto_137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070a0f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz v2, :cond_145

    goto :goto_146

    :cond_145
    neg-int v4, v4

    :goto_146
    move v2, v0

    :goto_147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_15b

    if-ne v2, v1, :cond_150

    goto :goto_158

    :cond_150
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    :goto_158
    add-int/lit8 v2, v2, 0x1

    goto :goto_147

    :cond_15b
    iput-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_188

    :cond_15e
    sget-object v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v1, v4, :cond_188

    invoke-virtual {p0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_170

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v11

    :cond_170
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0709fa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz v2, :cond_17e

    neg-int v1, v1

    :cond_17e
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iput-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :cond_188
    :goto_188
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0709f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v10, v0

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_1a1

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1a9

    :cond_1a1
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    or-int/lit8 v0, v0, 0x30

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1a9
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    iget-boolean p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->setIsAboveIcon(Z)V

    return-void
.end method

.method private orientAboutWidget()V
    .registers 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070a49

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_34

    iget v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eq v4, v5, :cond_27

    const/4 v6, 0x3

    if-ne v4, v6, :cond_34

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070a42

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_35

    :cond_34
    move v4, v3

    :goto_35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v4

    div-int/lit8 v4, v2, 0x2

    add-int v11, v10, v6

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v12

    const/4 v13, 0x1

    if-le v11, v12, :cond_62

    move v11, v13

    goto :goto_63

    :cond_62
    move v11, v1

    :goto_63
    iput-boolean v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v11, :cond_6c

    iget-object v10, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v6

    :cond_6c
    iget-object v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v4

    iget v12, v8, Landroid/graphics/Rect;->left:I

    if-le v11, v12, :cond_8a

    add-int/2addr v9, v4

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    iget v12, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v12

    if-ge v9, v4, :cond_8a

    iput-boolean v13, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget v1, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v1

    goto/16 :goto_133

    :cond_8a
    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsCenterAligned:Z

    iget-object v4, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    add-int v11, v9, v2

    iget v12, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v12

    iget v14, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v14

    if-ge v11, v12, :cond_a3

    move v11, v13

    goto :goto_a4

    :cond_a3
    move v11, v1

    :goto_a4
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v12

    iget v14, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v14

    if-le v4, v12, :cond_af

    move v12, v13

    goto :goto_b0

    :cond_af
    move v12, v1

    :goto_b0
    if-eqz v11, :cond_bb

    iget-boolean v11, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v11, :cond_b9

    if-eqz v12, :cond_b9

    goto :goto_bb

    :cond_b9
    move v11, v9

    goto :goto_bc

    :cond_bb
    :goto_bb
    move v11, v4

    :goto_bc
    if-ne v11, v9, :cond_c0

    move v12, v13

    goto :goto_c1

    :cond_c0
    move v12, v1

    :goto_c1
    iput-boolean v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    iget-object v12, v0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isAlignedWithStart()Z

    move-result v15

    if-eqz v15, :cond_e4

    const v15, 0x7f070507

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const v13, 0x7f070a46

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    div-int/lit8 v13, v12, 0x2

    div-int/2addr v15, v5

    goto :goto_f4

    :cond_e4
    const v13, 0x7f070503

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v15, 0x7f070a45

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    div-int/lit8 v14, v12, 0x2

    div-int/2addr v13, v5

    :goto_f4
    iget v5, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v5

    iget v5, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v5

    iput v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v6, v10

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v5

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v13

    if-le v6, v5, :cond_133

    const/16 v5, 0x10

    iput v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    add-int/2addr v9, v12

    iget v5, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v5

    sub-int/2addr v4, v12

    sub-int/2addr v4, v5

    iget-boolean v5, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-nez v5, :cond_123

    add-int/2addr v2, v9

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getRight()I

    move-result v5

    if-ge v2, v5, :cond_11f

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_130

    :cond_11f
    const/4 v2, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    goto :goto_12c

    :cond_123
    const/4 v2, 0x1

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v5

    if-le v4, v5, :cond_12e

    iput-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_12c
    move v11, v4

    goto :goto_131

    :cond_12e
    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    :goto_130
    move v11, v9

    :goto_131
    iput-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    :cond_133
    :goto_133
    iget v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v1}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v1

    if-eqz v1, :cond_147

    iget-boolean v1, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v1, :cond_140

    goto :goto_141

    :cond_140
    neg-int v3, v3

    :goto_141
    add-int/2addr v11, v3

    int-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    return-void

    :cond_147
    int-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, v0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_16d

    const/16 v2, 0x50

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v2, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_176

    :cond_16d
    const/16 v0, 0x30

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_176
    return-void
.end method

.method public static setLongClickViewVisible(Lcom/android/launcher/Launcher;Landroid/view/View;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDeferredRemoveCallback()Lcom/android/launcher3/popup/DeferredRemoveForPopup;

    move-result-object p0

    if-nez p0, :cond_17

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method public static shouldStartDragOrCancelDrag(Lcom/android/launcher/Launcher;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->cancelDrag()V

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static showForIcon(Landroid/view/View;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-object v2

    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_93

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    sget-object v3, Lcom/android/launcher/operators/GeneralCustomizer;->INSTANCE:Lcom/android/launcher/operators/GeneralCustomizer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher/operators/GeneralCustomizer;->isOperatorPlaceHolderItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_2e

    return-object v2

    :cond_2e
    const/16 v3, 0x45

    const-wide/16 v4, 0x32

    invoke-static {v0, v3, v4, v5}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0180

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->configureForLauncher(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketPopupShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v5, 0x1

    goto :goto_68

    :cond_60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v5

    :goto_68
    invoke-virtual {v4, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationKeysForItem(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getSupportedShortcuts()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/launcher3/popup/k;

    invoke-direct {v8, v0, v1, p0}, Lcom/android/launcher3/popup/k;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/v;->f:Lcom/android/common/util/v;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, p0, v5, v4, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->populateAndShow(Landroid/view/View;ILjava/util/List;Ljava/util/List;)Z

    move-result p0

    sput-boolean v6, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    if-eqz p0, :cond_92

    move-object v2, v3

    :cond_92
    return-object v2

    :cond_93
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OplusPopupContainerWithArrow"

    if-nez v0, :cond_a2

    const-string/jumbo p0, "showForIcon item == null, return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bf

    :cond_a2
    const-string v0, "icon.getTag() is type: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but ItemInfo is needed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bf
    return-object v2
.end method

.method private updateSystemShortcuts(ZZ)V
    .registers 12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b00

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070508

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b01

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070afd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d5

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    iget-object v6, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v5, :cond_a2

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    const v4, 0x7f0a010a

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0a029f

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz p1, :cond_91

    if-eqz p2, :cond_68

    move p1, v2

    goto :goto_69

    :cond_68
    move p1, v3

    :goto_69
    if-eqz p2, :cond_6c

    move v2, v3

    :cond_6c
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    if-eqz p2, :cond_72

    goto :goto_73

    :cond_72
    neg-int v3, v3

    :goto_73
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    invoke-virtual {v4, p2, p1, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    int-to-float p1, v3

    invoke-virtual {v6, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_114

    :cond_91
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_114

    :cond_a2
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v5

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4, v0, v6, v8}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    add-int/2addr v1, v0

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v4, v8, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_114

    :cond_d5
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isSystemShortcutHorizontalWithText()Z

    move-result p1

    if-eqz p1, :cond_fe

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070509

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070c16

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v2, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070c15

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v3, p1

    :cond_fe
    if-eqz p2, :cond_102

    move p1, v2

    goto :goto_103

    :cond_102
    move p1, v3

    :goto_103
    if-eqz p2, :cond_106

    move v2, v3

    :cond_106
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    add-int/2addr v1, v0

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_114
    return-void
.end method


# virtual methods
.method public addClosePopupContainerListener(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDeleteBgIndicatorView(Z)V
    .registers 4

    const-string v0, "handle open, mLongPressedView = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPopupContainerWithArrow"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    if-nez v0, :cond_19

    return-void

    :cond_19
    instance-of v1, v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v1, :cond_25

    if-nez p1, :cond_25

    check-cast v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->addDeleteBgIndicatorView()V

    goto :goto_4a

    :cond_25
    instance-of v0, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_4a

    if-eqz p1, :cond_4a

    sget-object p1, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->INSTANCE:Lcom/android/launcher3/folder/big/FolderFunctionGuide;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->hasShowAllGuide()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->folderPopClickTip(Landroid/view/View;)V

    :cond_43
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderIcon;->inflateOppositeView()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public animateClose()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    :cond_7
    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateClose()V

    return-void
.end method

.method public closeComplete()V
    .registers 7

    invoke-super {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->closeComplete()V

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    if-nez v1, :cond_13

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setTextVisible(Z)V

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz v0, :cond_25

    sget-boolean v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupBlurView;->finish(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    instance-of v3, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v3, :cond_33

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->isTextVisible()Z

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->shouldTextBeVisible()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    instance-of v3, v0, Lcom/android/launcher/Launcher;

    if-nez v3, :cond_43

    return-void

    :cond_43
    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    iget-object v3, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v3

    if-ne v3, v2, :cond_57

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAllAppsViewInSelectState()Z

    move-result v3

    if-eqz v3, :cond_57

    move v3, v2

    goto :goto_58

    :cond_57
    move v3, v1

    :goto_58
    if-nez v3, :cond_6c

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    :cond_6c
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_90

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBubbleTextView;->isTextVisible()Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    if-nez v3, :cond_90

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const-wide/16 v3, 0xc8

    sget-object v5, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-interface {v0, v3, v4, v5, v2}, Lcom/android/launcher3/IBubbleTextViewExt;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    :cond_90
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v3, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_9b

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0, v2}, Lcom/oplus/card/manager/domain/ICardView;->setTextVisible(Z)V

    :cond_9b
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    instance-of v2, v0, Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_c7

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-nez v0, :cond_c7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/launcher/guide/GuidePageManager;->setSlideSlipSettings(Landroid/content/Context;Z)V

    :cond_c7
    return-void
.end method

.method public createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .registers 2

    new-instance p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    return-object p1
.end method

.method public getClosePopupContainerListeners()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public getOpenCloseAnimator(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 23

    move-object v1, p0

    iget-boolean v0, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getOpenCloseAnimatorWithoutPendingCard(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v3, v2

    :goto_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_27

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v5, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_27
    iget-object v3, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    iget-object v7, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v7}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateHorizontal()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    move-result-object v7

    iget-object v8, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v8

    iget-object v9, v1, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->right:I

    add-int v12, v10, v11

    int-to-float v12, v12

    const/high16 v13, 0x40000000  # 2.0f

    div-float/2addr v12, v13

    if-nez v6, :cond_5e

    sget-object v13, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-eq v7, v13, :cond_64

    :cond_5e
    if-eqz v6, :cond_78

    sget-object v13, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v7, v13, :cond_78

    :cond_64
    int-to-float v13, v8

    cmpl-float v13, v12, v13

    if-lez v13, :cond_6d

    int-to-float v13, v11

    iput v13, v5, Landroid/graphics/PointF;->x:F

    goto :goto_70

    :cond_6d
    int-to-float v13, v10

    iput v13, v5, Landroid/graphics/PointF;->x:F

    :goto_70
    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    iput v13, v5, Landroid/graphics/PointF;->x:F

    :cond_78
    if-nez v6, :cond_7e

    sget-object v13, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_END:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-eq v7, v13, :cond_84

    :cond_7e
    if-eqz v6, :cond_9d

    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_START:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v7, v6, :cond_9d

    :cond_84
    mul-int/lit8 v6, v8, 0x2

    int-to-float v6, v6

    sub-float v6, v12, v6

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_92

    int-to-float v6, v11

    iput v6, v5, Landroid/graphics/PointF;->x:F

    goto :goto_95

    :cond_92
    int-to-float v6, v10

    iput v6, v5, Landroid/graphics/PointF;->x:F

    :goto_95
    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    iput v6, v5, Landroid/graphics/PointF;->x:F

    :cond_9d
    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;->ALIGN_HORIZONTAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;

    if-ne v7, v6, :cond_a3

    iput v12, v5, Landroid/graphics/PointF;->x:F

    :cond_a3
    iget-boolean v6, v1, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v6, :cond_c4

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v6

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v4

    iget-object v4, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    sub-int/2addr v7, v6

    int-to-float v4, v7

    iput v4, v5, Landroid/graphics/PointF;->y:F

    goto :goto_cc

    :cond_c4
    iget v6, v9, Landroid/graphics/Rect;->top:I

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    iput v4, v5, Landroid/graphics/PointF;->y:F

    :goto_cc
    iget-object v4, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v4

    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_CENTER:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    const/4 v7, 0x2

    if-ne v4, v6, :cond_e4

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v5, Landroid/graphics/PointF;->y:F

    goto :goto_f5

    :cond_e4
    sget-object v6, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;->ALIGN_VERTICAL_BOTTOM:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    if-ne v4, v6, :cond_f5

    iget v4, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginOffsetUnit()I

    move-result v6

    mul-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v4, v6

    iput v4, v5, Landroid/graphics/PointF;->y:F

    :cond_f5
    :goto_f5
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->setPopupScaleAminPivot(Landroid/graphics/PointF;)V

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    if-nez p1, :cond_128

    iget-object v4, v1, Lcom/android/launcher3/popup/ArrowPopup;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_10f

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_10f
    iget-boolean v4, v1, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v4, :cond_118

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_121

    :cond_118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    :goto_121
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v8}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->runCloseAnimation(Landroid/animation/AnimatorSet;)V

    :cond_128
    iget-boolean v3, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    const-wide/16 v9, 0x2ee

    const v6, 0x43a68000  # 333.0f

    if-eqz v3, :cond_160

    iget-object v3, v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v3

    new-array v11, v7, [F

    if-eqz p1, :cond_13f

    fill-array-data v11, :array_19a

    goto :goto_143

    :cond_13f
    aput v3, v11, v2

    aput v0, v11, v5

    :goto_143
    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    if-eqz p1, :cond_14b

    move-wide v12, v9

    goto :goto_14d

    :cond_14b
    mul-float/2addr v3, v6

    float-to-long v12, v3

    :goto_14d
    invoke-virtual {v11, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/popup/j;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/popup/j;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;I)V

    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_160
    if-eqz p1, :cond_169

    new-array v0, v7, [F

    fill-array-data v0, :array_1a2

    move-object v2, v0

    goto :goto_170

    :cond_169
    new-array v3, v7, [F

    aput v4, v3, v2

    aput v0, v3, v5

    move-object v2, v3

    :goto_170
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_177

    goto :goto_179

    :cond_177
    mul-float/2addr v4, v6

    float-to-long v9, v4

    :goto_179
    invoke-virtual {v0, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v3, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PENDING_CARD_PATH_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/popup/j;

    invoke-direct {v3, p0, v5}, Lcom/android/launcher3/popup/j;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move/from16 v0, p5

    int-to-long v3, v0

    move/from16 v0, p6

    int-to-long v5, v0

    move-object v0, p0

    move-object v1, p0

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/popup/ArrowPopup;->fadeInChildViews(Landroid/view/ViewGroup;[FJJLandroid/animation/AnimatorSet;)V

    return-object v8

    nop

    :array_19a
    .array-data 4
        0x0
        0x3f4ccccd  # 0.8f
    .end array-data

    :array_1a2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getOpenCloseAnimatorWithoutPendingCard(ZIIIIILandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;
    .registers 8

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 p3, 0x3f800000  # 1.0f

    const/4 p4, 0x0

    if-eqz p1, :cond_c

    move p5, p3

    goto :goto_d

    :cond_c
    move p5, p4

    :goto_d
    if-eqz p1, :cond_10

    goto :goto_11

    :cond_10
    move p3, p4

    :goto_11
    if-eqz p1, :cond_1c

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setScaleY(F)V

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1c
    iget-boolean p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz p1, :cond_22

    move p1, p4

    goto :goto_27

    :cond_22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    :goto_27
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    int-to-float p4, p1

    :cond_33
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setPivotY(F)V

    sget-object p1, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 p4, 0x1

    new-array p6, p4, [F

    const/4 p7, 0x0

    aput p3, p6, p7

    invoke-static {p0, p1, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p6, p4, [F

    aput p5, p6, p7

    invoke-static {p0, p3, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p5, 0x14a

    invoke-virtual {p1, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 p5, 0xfa

    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/animation/Animator;

    aput-object p1, p3, p7

    aput-object p0, p3, p4

    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->MOVE_EASE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method

.method public getPendingCardContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public getShortcutType()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-boolean p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getTargetObjectLocation(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getOriginalIconBounds(Landroid/graphics/Rect;)V

    goto :goto_57

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getOriginalFolderIconBounds(Lcom/android/launcher3/folder/OplusFolderIcon;Landroid/graphics/Rect;)V

    goto :goto_57

    :cond_14
    instance-of v1, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v1, :cond_22

    check-cast v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getCardBoundsForPopupShortCut(Landroid/graphics/Rect;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V

    goto :goto_57

    :cond_22
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_57
    return-void
.end method

.method public handleClose(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    const-string v1, "OplusPopupContainerWithArrow"

    if-nez v0, :cond_c

    const-string p0, "Handle close but is not open state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->canClosePopContainer()Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getClosePopupContainerListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/p;->h:Lcom/android/launcher3/p;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/allapps/m;->d:Lcom/android/launcher3/allapps/m;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->handleClose(Z)V

    const/4 v2, 0x0

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    if-eqz p1, :cond_40

    instance-of v3, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v3, :cond_40

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(Z)V

    :cond_40
    const-string p1, "handle close, mLongPressedView = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    if-nez p1, :cond_57

    return-void

    :cond_57
    instance-of v1, p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v1, :cond_60

    check-cast p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->removeDeleteBgIndicatorView()V

    :cond_60
    iget-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    if-nez p1, :cond_76

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, p1, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v1, :cond_76

    check-cast p1, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animCardAlpha(ZZ)V

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg(Z)V

    :cond_76
    return-void
.end method

.method public initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getInsertIndexForSystemShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;)I

    move-result p4

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    instance-of p4, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz p4, :cond_1b

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    goto :goto_60

    :cond_1b
    instance-of p4, p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_3d

    instance-of p0, p2, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_36

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    if-nez p0, :cond_36

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000  # 1.0f

    const/4 p4, -0x2

    invoke-direct {p0, p4, p4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_36
    move-object p0, p1

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndContentDescriptionFor(Landroid/widget/ImageView;)V

    goto :goto_60

    :cond_3d
    instance-of p2, p1, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    if-eqz p2, :cond_60

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->textStyleBold:Z

    if-eqz p0, :cond_5a

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    const/4 p2, 0x1

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_5a
    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;

    invoke-virtual {p3, p0}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Lcom/android/launcher3/shortcuts/DeepSystemShortcutView;)V

    :cond_60
    :goto_60
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public injectOnControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v0, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_29

    const-string p0, "OplusPopupContainerWithArrow"

    const-string p1, "We are touching resize frame while popup showing"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public isAlignedWithStart()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsLeftAligned:Z

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v1, :cond_e

    :cond_8
    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public isDragStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mDragStarted:Z

    return p0
.end method

.method public isPendingCardPreviewAvailable(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v2

    if-nez v2, :cond_69

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSupportPendingCardPreview()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_69

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_27

    return v1

    :cond_27
    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_32

    return v1

    :cond_32
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_40

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_40

    return v1

    :cond_40
    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->isNewInstallingType()Z

    move-result p1

    if-eqz p1, :cond_49

    return v1

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isInSplitScreenMode()Z

    move-result p1

    if-eqz p1, :cond_60

    goto :goto_69

    :cond_60
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of p0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p0, :cond_67

    return v1

    :cond_67
    const/4 p0, 0x1

    return p0

    :cond_69
    :goto_69
    return v1
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_33

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v5, :cond_28

    check-cast v3, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getPendingCardRV()Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isEventOverActivityArea(Lcom/android/launcher3/views/BaseDragLayer;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_2e

    :cond_28
    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_30

    :goto_2e
    move v1, v4

    goto :goto_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_33
    :goto_33
    if-nez v1, :cond_39

    invoke-virtual {p0, v4}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return v4

    :cond_39
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onCreateCloseAnimation(Landroid/animation/AnimatorSet;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(Z)V

    :cond_c
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    if-eqz p0, :cond_1a

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/PopupBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1a
    return-void
.end method

.method public onCreateOpenAnimation(Landroid/animation/AnimatorSet;)V
    .registers 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupBlurView;->createBlurAnim(Z)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->addDeleteBgIndicatorView(Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_17

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_17
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopupLauncherStateListener:Lcom/android/launcher3/popup/PopupLauncherStateListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->sIsPopupDismissed:Z

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 7

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mDeferContainerRemoval:Z

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    instance-of v2, v1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_20

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_38

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v2, :cond_2f

    check-cast v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    goto :goto_38

    :cond_2f
    instance-of v2, v1, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v2, :cond_38

    check-cast v1, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {v1, p2, p2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->animCardAlpha(ZZ)V

    :cond_38
    :goto_38
    if-eqz v0, :cond_52

    const/4 v1, 0x0

    if-eqz p1, :cond_49

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_49

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne p1, p2, :cond_49

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    goto :goto_52

    :cond_49
    iget-object p1, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const-wide/16 v2, 0xc8

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    :cond_52
    :goto_52
    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->handleClose(Z)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getFirstCardPreviewAfterEnterSimpleMode()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_e

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->resetFirstCardPreviewAfterEnterSimpleMode()V

    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isInShortcutArea(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5c

    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5c

    return v1

    :cond_5c
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_61
    return v1
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/popup/ArrowPopup;->onLayout(ZIIII)V

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p1}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mTouchDownLocation:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isInShortcutArea(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    :cond_10
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public orientAboutObject()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutWidget()V

    goto :goto_22

    :cond_a
    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v1, :cond_1f

    instance-of v0, v0, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v0, :cond_13

    goto :goto_1f

    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutPendingCard()V

    goto :goto_22

    :cond_1b
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutIcon()V

    goto :goto_22

    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutCard()V

    :goto_22
    return-void
.end method

.method public populateAndShow(Landroid/view/View;ILjava/util/List;Ljava/util/List;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1f
    :goto_1f
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/SystemShortcut;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    instance-of v4, v3, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$AppOpenNewWindow;

    if-eqz v4, :cond_39

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_39
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_3d
    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPendingCardPreviewAvailable(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p4

    if-eqz p4, :cond_53

    invoke-static {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getCardConfigListForIcon(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_53
    iget p4, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mNumNotifications:I

    add-int/2addr p4, p2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/2addr p4, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, p4

    const/4 p4, 0x0

    if-gtz v3, :cond_69

    return p4

    :cond_69
    instance-of v3, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_72

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    iput-object v3, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    :cond_72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    iput-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v9, 0x1

    if-lez v2, :cond_87

    iget-object v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v2, :cond_87

    move v2, v9

    goto :goto_88

    :cond_87
    move v2, p4

    :goto_88
    iput-boolean v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mNeedShowCardPreview:Z

    if-eqz v2, :cond_9c

    const v2, 0x7f0d019d

    invoke-virtual {p0, v2, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    iput-object v2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPendingCardContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    if-eqz v2, :cond_9c

    invoke-virtual {v2, p0, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->initCardPager(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_9c
    const v2, 0x7f0d01ca

    const v5, 0x7f0d0176

    const v6, 0x7f0d01ec

    if-lez p2, :cond_19f

    const v7, 0x7f0d0047

    invoke-virtual {p0, v7, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c0

    iget-object v7, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    const v8, 0x7f08076b

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_c0
    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0d0046

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutInnerContainer:Landroid/widget/LinearLayout;

    :goto_ce
    if-lez p2, :cond_e3

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    const v8, 0x7f0d0175

    iget-object v10, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v10}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_ce

    :cond_e3
    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iget-object v7, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutInnerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->updateHiddenShortcuts()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_186

    invoke-virtual {p0, v6, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result p2

    const v7, 0x7f08067d

    if-ne p2, v9, :cond_112

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_11a

    :cond_112
    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const v8, 0x7f08076a

    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_11a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, v9, :cond_125

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_125
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_129
    :goto_129
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_171

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/SystemShortcut;

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v8

    if-ne v8, v9, :cond_159

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v8, v0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const v8, 0x7f0a01bd

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v9, :cond_129

    if-eqz v0, :cond_129

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_129

    :cond_159
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isSystemShortcutHorizontalWithText()Z

    move-result v8

    if-eqz v8, :cond_168

    const v8, 0x7f0d01ed

    iget-object v10, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v10, v0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    goto :goto_129

    :cond_168
    const v8, 0x7f0d01ea

    iget-object v10, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v10, v0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    goto :goto_129

    :cond_171
    invoke-direct {p0, v9, p4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->updateSystemShortcuts(ZZ)V

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result p2

    if-eq p2, v9, :cond_184

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const v0, 0x3f4ccccd  # 0.8f

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_184
    iput-boolean v9, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    :cond_186
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1ea

    invoke-virtual {p0, v2, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, v6, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, v5, p2, p4, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    goto :goto_1ea

    :cond_19f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1ea

    invoke-virtual {p0, v6, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b1
    :goto_1b1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cf

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/SystemShortcut;

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v7, v0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    instance-of v0, v0, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$ReduceCardRecommend;

    if-eqz v0, :cond_1b1

    const v0, 0x7f0d01e9

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v7}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1b1

    :cond_1cf
    invoke-direct {p0, p4, p4}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->updateSystemShortcuts(ZZ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1ea

    invoke-virtual {p0, v2, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0, v6, p0}, Lcom/android/launcher3/popup/ArrowPopup;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p0, v5, p2, p4, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->initializeSystemShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher3/popup/SystemShortcut;Landroid/view/View;)V

    :cond_1ea
    :goto_1ea
    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->reorderAndShow(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getTitleForAccessibility()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_1fb

    invoke-virtual {p1, v9}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    :cond_1fb
    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of p2, p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz p2, :cond_206

    check-cast p1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p1, v9}, Lcom/android/launcher3/folder/OplusFolderIcon;->forceHideDot(Z)V

    :cond_206
    new-instance p1, Landroid/animation/LayoutTransition;

    invoke-direct {p1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p1, :cond_239

    iget p1, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_21a

    return v9

    :cond_21a
    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    move-object v3, p2

    check-cast v3, Lcom/android/launcher/Launcher;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v5, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    move-object v6, p0

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lcom/android/launcher3/popup/PopupPopulator;->createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_239
    return v9
.end method

.method public removeClosePopupContainerListener(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mOnCloseCallbackList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reorderAndShow(I)V
    .registers 14

    const-string v0, "OplusPopupContainerWithArrow"

    const-string v1, "reorderAndShow"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/popup/PopupBlurView;->getPopBlurView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/launcher3/popup/PopupBlurView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mPopBlurView:Lcom/android/launcher3/popup/PopupBlurView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutObject()V

    iget-boolean v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v1, :cond_108

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_33
    if-ge v5, v2, :cond_44

    if-ne v5, p1, :cond_3a

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3a
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_44
    iget-boolean p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mHaveAppAndSystemShortcuts:Z

    if-eqz p1, :cond_f1

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f08076a

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v0, :cond_77

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f08067e

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p1

    if-ne p1, v0, :cond_7f

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const v6, 0x7f0a01bd

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7f

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7f

    :cond_77
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f08076b

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_7f
    :goto_7f
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070b00

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070508

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move v7, v4

    :goto_9c
    if-ge v7, p1, :cond_e9

    iget-object v8, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    add-int/lit8 v9, p1, -0x1

    if-ne v7, v9, :cond_b6

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    add-int v10, v6, v5

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v4, v4, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_e6

    :cond_b6
    if-nez v7, :cond_e6

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v9, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mSystemShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v9

    if-nez v9, :cond_e3

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isSystemShortcutHorizontalWithText()Z

    move-result v9

    if-eqz v9, :cond_e3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070b77

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    add-int v11, v6, v9

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v4, v9, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_e6

    :cond_e3
    invoke-virtual {v8, v4, v4, v4, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_e6
    :goto_e6
    add-int/lit8 v7, v7, 0x1

    goto :goto_9c

    :cond_e9
    if-lez p1, :cond_ed

    move p1, v0

    goto :goto_ee

    :cond_ed
    move p1, v4

    :goto_ee
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->updateSystemShortcuts(ZZ)V

    :cond_f1
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_f7
    if-ge v4, v2, :cond_105

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    :cond_105
    invoke-virtual {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->orientAboutObject()V

    :cond_108
    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/ArrowPopup;->onInflationComplete(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V

    return-void
.end method

.method public updateHiddenShortcuts()V
    .registers 11

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070508

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-gtz v0, :cond_10

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_12

    :cond_10
    int-to-float v1, v0

    div-float/2addr v1, v1

    :goto_12
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070b00

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070b77

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_30
    if-ge v6, v2, :cond_75

    iget-object v7, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcuts:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-nez v6, :cond_48

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    add-int v9, v0, v3

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v5, v3, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_64

    :cond_48
    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isSystemShortcutHorizontalWithText()Z

    move-result v8

    if-eqz v8, :cond_5e

    add-int/lit8 v8, v2, -0x1

    if-ne v6, v8, :cond_5e

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    add-int v9, v0, v4

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v7, v5, v5, v5, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_64

    :cond_5e
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_64
    invoke-virtual {v7}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v7}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :cond_75
    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    if-nez v1, :cond_7a

    return-void

    :cond_7a
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x4

    if-le v2, v5, :cond_87

    mul-int/2addr v5, v0

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_8a

    :cond_87
    mul-int/2addr v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_8a
    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v0, v3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isSystemShortcutHorizontalWithText()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int/2addr v0, v4

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_9a
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mAppShortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateNotificationHeader()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_f

    const-class p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const-string p0, "PopupContainerWithArrow"

    const-string/jumbo v0, "updateNotificationHeader: mOriginalIcon is null."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-super {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->updateNotificationHeader()V

    return-void
.end method
