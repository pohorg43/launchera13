.class public final Lcom/android/launcher/guide/PendingCardGuide;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/PendingCardGuide$Companion;,
        Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/guide/PendingCardGuide$Companion;

.field private static final DELAY_SHOW:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "PendingCardGuide"


# instance fields
.field private animationViewTipRunnable:Ljava/lang/Runnable;

.field private final builder:Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

.field private guideString:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mAnimResId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private mGuideView:Landroid/view/View;

.field private mHeight:I

.field private mIsShowing:Z

.field private mLauncherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedShowPendingCardGuide:Z

.field private mRotationX:F

.field private mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private mWidth:I

.field private viewTipRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/PendingCardGuide$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/PendingCardGuide$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/guide/PendingCardGuide;->Companion:Lcom/android/launcher/guide/PendingCardGuide$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;)V
    .registers 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->builder:Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getNeedShowGuide()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mNeedShowPendingCardGuide:Z

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getLauncherWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getGuideString()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->guideString:I

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getSizeRect()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mWidth:I

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getSizeRect()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mHeight:I

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getAnimResId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimResId:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getRotationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mRotationX:F

    invoke-virtual {p1}, Lcom/android/launcher/guide/PendingCardGuide$PendingCardGuideBuilder;->getAnimationView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/PendingCardGuide;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/guide/PendingCardGuide;->show$lambda-6(Lcom/android/launcher/guide/PendingCardGuide;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/guide/PendingCardGuide;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/guide/PendingCardGuide;->show$lambda-3(Lcom/android/launcher/guide/PendingCardGuide;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/guide/PendingCardGuide;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/guide/PendingCardGuide;->show$lambda-3$lambda-2(Lcom/android/launcher/guide/PendingCardGuide;)V

    return-void
.end method

.method private final changeGuideStateInSharedPrefs()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getMAnimResId()Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_c

    goto :goto_19

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f11001b

    if-ne v2, v3, :cond_19

    invoke-static {v0, v1}, Lcom/android/launcher/guide/GuidePrefUtils;->setPendingCardSlideGuide(Landroid/content/Context;Z)V

    goto :goto_2c

    :cond_19
    :goto_19
    const v2, 0x7f110014

    if-nez p0, :cond_1f

    goto :goto_29

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_29

    invoke-static {v0, v1}, Lcom/android/launcher/guide/GuidePrefUtils;->setPendingCardLongPressGuide(Landroid/content/Context;Z)V

    goto :goto_2c

    :cond_29
    :goto_29
    invoke-static {v0, v1}, Lcom/android/launcher/guide/GuidePrefUtils;->setPendingCardPinTip(Landroid/content/Context;Z)V

    :goto_2c
    return-void
.end method

.method private final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mLauncherRef:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    :goto_c
    return-object p0
.end method

.method private final pendingCardGuideAvailable()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_19

    iget-boolean p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mIsShowing:Z

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    :goto_19
    return v1
.end method

.method private final show(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mLauncherRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mGuideView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-wide/16 v2, 0x64

    if-eqz v1, :cond_84

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    new-instance v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v4, p0, Lcom/android/launcher/guide/PendingCardGuide;->mWidth:I

    iget v5, p0, Lcom/android/launcher/guide/PendingCardGuide;->mHeight:I

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    const/4 v5, 0x0

    aget v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher/guide/PendingCardGuide;->mWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v5, p0, Lcom/android/launcher/guide/PendingCardGuide;->mHeight:I

    sub-int/2addr p1, v5

    int-to-float p1, p1

    div-float/2addr p1, v7

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iput-boolean v4, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    iget-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/android/launcher/guide/b;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/b;-><init>(Lcom/android/launcher/guide/PendingCardGuide;)V

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->animationViewTipRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->animationViewTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    goto :goto_95

    :cond_84
    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/guide/PendingCardGuide;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->viewTipRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mGuideView:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->viewTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_95
    return-void
.end method

.method private static final show$lambda-3(Lcom/android/launcher/guide/PendingCardGuide;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getMAnimationView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_67

    :cond_1f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mIsShowing:Z

    new-instance v1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher/guide/PendingCardGuide;->mContext:Landroid/content/Context;

    if-nez v2, :cond_3f

    const-string v2, "mContext"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3f
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher/guide/PendingCardGuide;->guideString:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getMAnimationView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZ)V

    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher/guide/j;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/j;-><init>(Lcom/android/launcher/guide/PendingCardGuide;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void

    :cond_67
    :goto_67
    const-string p0, "PendingCardGuide"

    const-string v0, "launcher state don\'t support show popup window."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final show$lambda-3$lambda-2(Lcom/android/launcher/guide/PendingCardGuide;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->hide()V

    return-void
.end method

.method private static final show$lambda-6(Lcom/android/launcher/guide/PendingCardGuide;Landroid/view/View;)V
    .registers 8

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_a5

    :cond_1f
    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    const/4 v3, 0x4

    if-eqz v2, :cond_6b

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070a0c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    goto :goto_64

    :cond_48
    check-cast v1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPendingCardContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v4, p1

    sub-float/2addr v1, v4

    :goto_64
    int-to-float p1, v2

    cmpg-float p1, v1, p1

    if-gez p1, :cond_6b

    const/16 v3, 0x20

    :cond_6b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mIsShowing:Z

    new-instance p1, Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-direct {p1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mContext:Landroid/content/Context;

    if-nez v0, :cond_8b

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_8b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->guideString:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/PendingCardGuide;->getMGuideView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V

    return-void

    :cond_a5
    :goto_a5
    const-string p0, "PendingCardGuide"

    const-string p1, "launcher state don\'t support show popup window."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAnimationViewTipRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->animationViewTipRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getMAnimResId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimResId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMAnimationView()Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public final getMGuideView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mGuideView:Landroid/view/View;

    return-object p0
.end method

.method public final getMRotationX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mRotationX:F

    return p0
.end method

.method public final getViewTipRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->viewTipRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final hide()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez v0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :goto_8
    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :goto_10
    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1a
    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    if-nez v0, :cond_1f

    goto :goto_24

    :cond_1f
    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_24
    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mGuideView:Landroid/view/View;

    if-nez v0, :cond_29

    goto :goto_2e

    :cond_29
    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->viewTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_2e
    iget-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v0, :cond_33

    goto :goto_38

    :cond_33
    iget-object v1, p0, Lcom/android/launcher/guide/PendingCardGuide;->animationViewTipRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_38
    iget-boolean v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mIsShowing:Z

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Lcom/android/launcher/guide/PendingCardGuide;->changeGuideStateInSharedPrefs()V

    :cond_3f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mIsShowing:Z

    iput-boolean v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mNeedShowPendingCardGuide:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mToolTip:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final isShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mIsShowing:Z

    return p0
.end method

.method public final needShow(Landroid/view/View;)Z
    .registers 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "view.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher/guide/PendingCardGuide;->pendingCardGuideAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    iget-boolean v0, p0, Lcom/android/launcher/guide/PendingCardGuide;->mNeedShowPendingCardGuide:Z

    if-eqz v0, :cond_23

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/PendingCardGuide;->show(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_23
    return v1
.end method

.method public final setAnimationViewTipRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->animationViewTipRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setMAnimResId(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimResId:Ljava/lang/Integer;

    return-void
.end method

.method public final setMAnimationView(Lcom/oplus/anim/EffectiveAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    return-void
.end method

.method public final setMGuideView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mGuideView:Landroid/view/View;

    return-void
.end method

.method public final setMRotationX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->mRotationX:F

    return-void
.end method

.method public final setViewTipRunnable(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/PendingCardGuide;->viewTipRunnable:Ljava/lang/Runnable;

    return-void
.end method
