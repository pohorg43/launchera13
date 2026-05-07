.class public Lcom/android/launcher3/views/OplusWidgetsFullSheet;
.super Lcom/android/launcher3/widget/BaseWidgetSheet;
.source ""

# interfaces
.implements Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;,
        Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;,
        Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration;
    }
.end annotation


# static fields
.field private static final DEFAULT_OPEN_DURATION:J = 0x10bL

.field private static final DELAY_CONTENT_ALPHA_ANIMATION:J = 0x64L

.field private static final DELAY_CONTENT_ALPHA_ANIMATION_400:J = 0x190L

.field private static final FADE_IN_DURATION:J = 0x96L

.field private static final PANEL_ANIM_DELAY:I = 0x50

.field private static final TAG:Ljava/lang/String; = "OplusWidgetsFullSheet"

.field private static final VERTICAL_START_POSITION:F = 0.3f


# instance fields
.field public mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

.field private mBoundPath:Landroid/graphics/Path;

.field private mBoundRadius:I

.field private mBoundRect:Landroid/graphics/RectF;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsOplusScrimEnabled:Z

.field private mIsWidgetPanelShowed:Z

.field private mMaxHeight:I

.field private mOnClickWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;

.field private mOnDragDropWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;

.field private mPanelAnimation:Landroid/animation/AnimatorSet;

.field private mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

.field private mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

.field private mStartByToggleBar:Z

.field private mWidgetPanelBehavior:Lcom/android/launcher3/widget/WidgetSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/widget/WidgetSheetBehavior<",
            "Lcom/android/launcher3/views/OplusWidgetsFullSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/BaseWidgetSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundRect:Landroid/graphics/RectF;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundPath:Landroid/graphics/Path;

    new-instance p3, Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;

    invoke-direct {p3, p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;-><init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V

    iput-object p3, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p3

    new-instance v6, Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/icons/IconCache;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iput-object v6, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    sget-object p3, Lcom/android/launcher3/R$styleable;->OplusWidgetsFullSheet:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mMaxHeight:I

    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundRadius:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->lambda$open$0()V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Lcom/android/launcher3/views/OplusCoordinatorLayout;)Lcom/android/launcher3/views/OplusCoordinatorLayout;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mStartByToggleBar:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Lcom/android/launcher/togglebar/ToggleBarManager;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->isStartByToggleBar(Lcom/android/launcher/togglebar/ToggleBarManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)Lcom/android/launcher/widget/WidgetsRecyclerViewR;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->onPanelHideByBehavior()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->removeWidgetPanel()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)Lcom/android/launcher3/widget/WidgetSheetBehavior;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mWidgetPanelBehavior:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    return-object p0
.end method

.method private getTitleResId()I
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p0

    const v0, 0x7f12054f

    if-eqz p0, :cond_a

    return v0

    :cond_a
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result p0

    if-eqz p0, :cond_14

    const p0, 0x7f120548

    return p0

    :cond_14
    return v0
.end method

.method public static getWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher/widget/WidgetsRecyclerViewR;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0a0460

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    return-object p0
.end method

.method private initPanelContentAnimation(ZZ)Landroid/animation/AnimatorSet;
    .registers 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p2, :cond_45

    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_11

    move v5, v4

    goto :goto_12

    :cond_11
    move v5, p2

    :goto_12
    if-eqz p1, :cond_15

    move v4, p2

    :cond_15
    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v5, v3, v2

    aput v4, v3, v1

    invoke-static {p0, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p1, :cond_2d

    const-wide/16 v1, 0x28a

    goto :goto_2f

    :cond_2d
    const-wide/16 v1, 0x1f4

    :goto_2f
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_37

    const-wide/16 p1, 0x64

    goto :goto_39

    :cond_37
    const-wide/16 p1, 0x190

    :goto_39
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object p1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_8a

    :cond_45
    if-eqz p1, :cond_4d

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_4e

    :cond_4d
    move p2, v4

    :goto_4e
    if-eqz p1, :cond_51

    goto :goto_56

    :cond_51
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    :goto_56
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    sget-object v5, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v6, v3, [F

    aput p2, v6, v2

    aput v4, v6, v1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p1, :cond_6a

    const-wide/16 v4, 0x226

    goto :goto_6c

    :cond_6a
    const-wide/16 v4, 0x140

    :goto_6c
    invoke-virtual {p2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_74

    sget-object v4, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_TRANSLATION:Landroid/view/animation/PathInterpolator;

    goto :goto_76

    :cond_74
    sget-object v4, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_WIDGET_SHEET_CLOSE_TRANSLATION:Landroid/view/animation/PathInterpolator;

    :goto_76
    invoke-virtual {p2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->contentAnimForWidgetTransition(Lcom/android/launcher3/Launcher;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-array p1, v3, [Landroid/animation/Animator;

    aput-object p2, p1, v2

    aput-object p0, p1, v1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_8a
    return-object v0
.end method

.method private isStartByToggleBar(Lcom/android/launcher/togglebar/ToggleBarManager;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->isStartByToggleBar()Z

    move-result p0

    :cond_1c
    return p0
.end method

.method private synthetic lambda$open$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private notifyOnClickOutside()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnClickWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;->onClickOutside()V

    :cond_7
    return-void
.end method

.method private notifyOnClickWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnClickWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;->onClickWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    :cond_7
    return-void
.end method

.method private notifyOnDragWidgetCancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnDragDropWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;->onDragWidgetCancel()V

    :cond_7
    return-void
.end method

.method private notifyOnDragWidgetStart()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnDragDropWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;->onDragWidgetStart()V

    :cond_7
    return-void
.end method

.method private notifyOnDropWidgetToDesktop(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnDragDropWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;->onDropWidgetToDesktop(Z)V

    :cond_7
    return-void
.end method

.method private notifyOnDropWidgetToPagePreview(ILcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnDragDropWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;->onDropWidgetToPagePreview(ILcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    :cond_7
    return-void
.end method

.method private notifyOnLongClickWidget(Lcom/android/launcher3/PendingAddItemInfo;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnClickWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;

    if-eqz p0, :cond_9

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;->onLongClickWidget(Lcom/android/launcher3/PendingAddItemInfo;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private onPanelHideByBehavior()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    iget-object v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

    const-string v2, "OplusWidgetsFullSheet"

    if-nez v1, :cond_18

    const-string p0, "onPanelHideByBehavior , mParentView is null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPanelHideByBehavior , parent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_41

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_41
    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearBackAction()V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v2

    if-eqz v2, :cond_64

    iget-boolean v2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mStartByToggleBar:Z

    if-eqz v2, :cond_57

    goto :goto_64

    :cond_57
    invoke-virtual {v1, v0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    invoke-virtual {v1, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    const/4 p0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/launcher/togglebar/ToggleBarManager;->mainUiResumeContentAlphaAnimation(ZJ)V

    goto :goto_72

    :cond_64
    :goto_64
    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0, v0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->contentAnimForWidgetTransition(Lcom/android/launcher3/Launcher;Z)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v1, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    :goto_72
    return-void
.end method

.method private removeWidgetPanel()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/OplusWorkspace;->updateVisiblePagesForDrag(ZZ)V

    :cond_1b
    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

    const-string v1, "OplusWidgetsFullSheet"

    if-nez v0, :cond_2e

    const-string v0, "removeWidgetPanel, mParentView is null."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/OplusCoordinatorLayout;

    iput-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_43

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string p0, "removeWidgetPanel, getParent() is null."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetPanel, parent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_68

    return-void

    :cond_68
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mParentView:Lcom/android/launcher3/views/OplusCoordinatorLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mPanelAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->reset(Lcom/android/launcher/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mPanelAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void

    :cond_84
    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;->reset(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/views/OplusWidgetsFullSheet;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    const v1, 0x7f0d0239

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a05d8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->attachToContainer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->open(Z)V

    return-object p0
.end method

.method private startExpandHideAnimation(ZZ)V
    .registers 6

    const-string/jumbo v0, "startOpenOrCloseAnim, open = "

    const-string v1, ", mIsWidgetPanelShowed = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    const-string v2, "OplusWidgetsFullSheet"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_1a

    :cond_16
    if-nez v0, :cond_1e

    if-nez p1, :cond_1e

    :cond_1a
    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->removeWidgetPanel()V

    return-void

    :cond_1e
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->open(Z)V

    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    goto :goto_3c

    :cond_28
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-static {v2, v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_3a
    iput-boolean v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    :goto_3c
    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mPanelAnimation:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mPanelAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_49
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->initPanelContentAnimation(ZZ)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mPanelAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;-><init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mPanelAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    neg-float p1, p1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    const/high16 p1, 0x3f000000  # 0.5f

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/launcher3/anim/PendingAnimation;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public closePanel(ZZ)V
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->startExpandHideAnimation(ZZ)V

    return-void

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mPanelAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    if-nez p1, :cond_26

    const-string p0, "OplusWidgetsFullSheet"

    const-string p1, "Can\'t remove panel as it\'s running animation"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->removeWidgetPanel()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAccessibilityTarget()Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p0, :cond_e

    const p0, 0x7f1205c9

    goto :goto_11

    :cond_e
    const p0, 0x7f1205ca

    :goto_11
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()V
    .registers 3

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->from(Landroid/view/View;)Lcom/android/launcher3/widget/WidgetSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mWidgetPanelBehavior:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setHideable(Z)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mWidgetPanelBehavior:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setSkipCollapsed(Z)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mWidgetPanelBehavior:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    new-instance v1, Lcom/android/launcher3/views/OplusWidgetsFullSheet$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$3;-><init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    return-void
.end method

.method public getContentViewHeight()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1d

    :cond_15
    const-string v1, "OplusWidgetsFullSheet"

    const-string v2, "getContentViewHeight parentView is null, width = 0"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1d
    if-lez v1, :cond_20

    goto :goto_22

    :cond_20
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_22
    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    return-object p0
.end method

.method public getWidgetsRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    return-object p0
.end method

.method public handleClose(Z)V
    .registers 4

    const-wide/16 v0, 0x10b

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->handleClose(ZJ)V

    return-void
.end method

.method public isOfType(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public notifyWidgetProvidersChanged()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->notifyWidgetProvidersChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->notifyOnClickWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    return-void
.end method

.method public onCloseComplete()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onCloseComplete()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method

.method public onContentHorizontalMarginChanged(I)V
    .registers 2

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_23

    iput-boolean v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    goto :goto_3c

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/BaseRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    :cond_3c
    :goto_3c
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 5

    instance-of v0, p1, Lcom/android/launcher/togglebar/views/DragCancelButton;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->notifyOnDragWidgetCancel()V

    return-void

    :cond_8
    instance-of p1, p1, Lcom/android/launcher/pagepreview/PagePreviewListView;

    if-eqz p1, :cond_16

    iget-object p1, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    check-cast p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->notifyOnDropWidgetToPagePreview(ILcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    return-void

    :cond_16
    invoke-direct {p0, p3}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->notifyOnDropWidgetToDesktop(Z)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const v0, 0x7f0a0460

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    iput-object v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    iget-object v2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher/widget/WidgetsRecyclerViewR;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    check-cast v1, Lcom/android/launcher3/views/TopRoundedCornerView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/views/SpringRelativeLayout;->addSpringView(I)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {v1}, Lcom/android/launcher3/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->onWidgetsBound()V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    new-instance v1, Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$WidgetDividerItemDecoration;-><init>(Landroid/content/Context;Lcom/android/launcher3/views/OplusWidgetsFullSheet$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const v0, 0x7f0a0558

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getTitleResId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 7

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    const/4 v0, 0x2

    invoke-static {p4, p2, v0, p3}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result p2

    iget-object p3, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    sub-int p4, p5, p4

    add-int/2addr p1, p2

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    invoke-virtual {p3, p2, p4, p1, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    iget p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->setTranslationShift(F)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    int-to-float p3, p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundPath:Landroid/graphics/Path;

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mBoundRadius:I

    int-to-float p0, p0

    iget-object p2, p2, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->a:Landroid/graphics/Path;

    invoke-static {p2, p3, p0}, Lcom/coui/appcompat/roundRect/COUIShapePath;->a(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->notifyOnLongClickWidget(Lcom/android/launcher3/PendingAddItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onLongClick(Landroid/view/View;)Z

    move-result p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    if-eqz p1, :cond_17

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->notifyOnDragWidgetStart()V

    :cond_17
    return p1
.end method

.method public onMeasure(II)V
    .registers 9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mMaxHeight:I

    if-lez v2, :cond_12

    if-le v1, v2, :cond_12

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_1f

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    move v3, v1

    goto :goto_3c

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v0

    :goto_3c
    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int v5, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWidgetsBound()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onWidgetsBound()V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mAdapter:Lcom/android/launcher3/views/OplusWidgetsListAdapter;

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/OplusWidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    return-void
.end method

.method public open(Z)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5d

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_1b

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const p1, 0x3e99999a  # 0.3f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->setTranslationShift(F)V

    :cond_1b
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x10b

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x10c000e

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet$2;-><init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher3/views/e;

    invoke-direct {p1, p0, v5}, Lcom/android/launcher3/views/e;-><init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_68

    :cond_5d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->setTranslationShift(F)V

    new-instance p1, Lcom/android/launcher3/views/e;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/views/e;-><init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_68
    return-void
.end method

.method public openPanel(Z)V
    .registers 5

    const-string v0, "openPanel, animate = "

    const-string v1, ", mStartByToggleBar = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mStartByToggleBar:Z

    const-string v2, "OplusWidgetsFullSheet"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_38

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-eqz p1, :cond_34

    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mStartByToggleBar:Z

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result p1

    if-nez p1, :cond_34

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_34

    move v0, v1

    :cond_34
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->startExpandHideAnimation(ZZ)V

    return-void

    :cond_38
    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->open(Z)V

    const-string p1, "openPanel,mIsWidgetPanelShowed = true"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mIsWidgetPanelShowed:Z

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/config/ScreenInfo;->getStatusBarHeightByWindowInsets(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d58

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2e

    :cond_21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d57

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_2e
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mRecyclerView:Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070ca3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_60

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setupNavBarColor()V

    goto :goto_63

    :cond_60
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->clearNavBarColor()V

    :goto_63
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    check-cast p1, Lcom/android/launcher3/views/TopRoundedCornerView;

    iget-object v0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/views/TopRoundedCornerView;->setNavBarScrimHeight(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setOnClickWidgetListener(Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnClickWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;

    return-void
.end method

.method public setOnDragDropWidgetListener(Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->mOnDragDropWidgetListener:Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;

    return-void
.end method

.method public setTranslationShift(F)V
    .registers 2

    return-void
.end method
