.class public final Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;
.super Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;

.field private static final SHOW_TOOLTIPS_DURATION:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "ToggleBarMainUIController"


# instance fields
.field private mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

.field private mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

.field private widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->Companion:Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->showToolTips$lambda-3$lambda-2$lambda-1$lambda-0(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    return-void
.end method

.method public static final synthetic access$getMContentView$p(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->showToolTips$lambda-3(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    return-void
.end method

.method private final isIgnoreItem(ZIZLcom/android/launcher/Launcher;)Z
    .registers 6

    const p0, 0x7f0a054f

    const/4 v0, 0x0

    if-eq p2, p0, :cond_1c

    const p0, 0x7f0a0551

    if-eq p2, p0, :cond_12

    const p0, 0x7f0a0553

    if-eq p2, p0, :cond_22

    :cond_10
    move p3, v0

    goto :goto_22

    :cond_12
    if-nez p1, :cond_1a

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_1a
    const/4 p3, 0x1

    goto :goto_22

    :cond_1c
    invoke-virtual {p4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p3, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    :cond_22
    :goto_22
    return p3
.end method

.method private static final showToolTips$lambda-3(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_d

    goto :goto_16

    :cond_d
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_16

    :cond_14
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createView itemView:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isLargeDisplayDevice:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLargeDisplayDeviceInLarge:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDeviceInLarge()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ToggleBarMainUIController"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v4, 0x1

    if-nez v0, :cond_4a

    goto :goto_51

    :cond_4a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    move v2, v4

    :cond_51
    :goto_51
    if-eqz v2, :cond_96

    if-eqz v1, :cond_96

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_96

    :cond_5c
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_61

    goto :goto_96

    :cond_61
    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const v5, 0x7f1202af

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    const/4 v2, 0x4

    :try_start_78
    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;I)V
    :try_end_7b
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_8b

    :catch_7c
    move-exception v1

    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "showWithDirection,exception:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8b
    new-instance v1, Lcom/android/launcher/guide/j;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/j;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->setWidgetMoveToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V

    :cond_96
    :goto_96
    return-void
.end method

.method private static final showToolTips$lambda-3$lambda-2$lambda-1$lambda-0(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_b

    goto :goto_17

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_17

    :cond_12
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher/guide/GuidePageManager;->hideWidgetMoveTip(Landroid/content/Context;)V

    :goto_17
    return-void
.end method


# virtual methods
.method public final alphaDestroyAnimation()Landroid/animation/ObjectAnimator;
    .registers 4

    const-string v0, "ToggleBarMainUIController"

    const-string v1, "alphaDestroyAnimation."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_c

    goto :goto_11

    :cond_c
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_11
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_16

    goto :goto_1a

    :cond_16
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1a
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_40

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x8c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_MAIN_UI:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v1, "animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$alphaDestroyAnimation$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_40
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final animationContentAlpha(ZJ)V
    .registers 8

    const-string v0, "animationContentAlpha, show = "

    const-string v1, "ToggleBarMainUIController"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    if-eqz p1, :cond_12

    move v0, v1

    :cond_12
    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v1, :cond_17

    goto :goto_1b

    :cond_17
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1b
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x8c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v0, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_MAIN_UI:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController$animationContentAlpha$1$1;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p0, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3d
    return-void
.end method

.method public final animationForDestroyMainUI(ZLjava/lang/Runnable;)Landroid/animation/Animator;
    .registers 6

    const-string v0, "completeRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animationForDestroyMainUI, alphaFadeOut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", RecyclerView state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    move-object v1, v2

    goto :goto_26

    :cond_1e
    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarMainUIController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_37

    goto :goto_3a

    :cond_37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    :goto_3a
    if-nez p1, :cond_71

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_42

    move-object p1, v2

    goto :goto_4a

    :cond_42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_4a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eq p1, v0, :cond_52

    goto :goto_71

    :cond_52
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-nez p1, :cond_5c

    const-string p0, "Can not execute destroy animation as null recyclerView\'s adapter"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5c
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/launcher/togglebar/adapter/AbstractToggleBarAdapter;->itemDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;Z)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-nez p2, :cond_6b

    goto :goto_6e

    :cond_6b
    invoke-virtual {p2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onMainUIDestroy()V

    :goto_6e
    iput-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    return-object p1

    :cond_71
    :goto_71
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-nez p1, :cond_76

    goto :goto_79

    :cond_76
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onMainUIDestroy()V

    :goto_79
    iput-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->alphaDestroyAnimation()Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public canScrollVerticallyDown(II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public createView(I)V
    .registers 10

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->createView(I)V

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    const v3, 0x7f0a0317

    invoke-virtual {p0, v3}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    iput-object v3, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    iget-object v3, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v3}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-boolean v4, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v4, :cond_2a

    const v4, 0x7f070759

    goto :goto_2d

    :cond_2a
    const v4, 0x7f07075a

    :goto_2d
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v4, :cond_36

    goto :goto_52

    :cond_36
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_52
    const/4 v3, 0x0

    if-eqz v0, :cond_85

    and-int/2addr p1, v2

    if-eqz p1, :cond_7c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cvFlags and hasMark = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " cvFlags and FLAG_CREATE_VIEW_CLOSE_ANIM = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " close anim"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToggleBarMainUIController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_7c
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_81

    goto :goto_8d

    :cond_81
    invoke-virtual {p1, v3, v2}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V

    goto :goto_8d

    :cond_85
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_8a

    goto :goto_8d

    :cond_8a
    invoke-virtual {p1, v3, v2}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;->initLayoutAnimation(Landroid/view/View;Z)V

    :goto_8d
    new-instance p1, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v2, "mLauncher"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->parserToggleBarContent(Lcom/android/launcher/Launcher;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;-><init>(Lcom/android/launcher/Launcher;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_a9

    goto :goto_ac

    :cond_a9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_ac
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070cb2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_be

    goto :goto_c6

    :cond_be
    new-instance v2, Lcom/android/launcher/togglebar/RvItemDecoration;

    invoke-direct {v2, p1, v1}, Lcom/android/launcher/togglebar/RvItemDecoration;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :goto_c6
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_cc

    :goto_ca
    move-object p1, v3

    goto :goto_d9

    :cond_cc
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-nez p1, :cond_d3

    goto :goto_ca

    :cond_d3
    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getLastColorState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    :goto_d9
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_121

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_e6

    goto :goto_fd

    :cond_e6
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_ec

    :goto_ea
    move-object v0, v3

    goto :goto_fa

    :cond_ec
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_f3

    goto :goto_ea

    :cond_f3
    const v1, 0x7f120559

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_fa
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_fd
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_102

    goto :goto_107

    :cond_102
    const/16 v0, 0x40

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :goto_107
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez p1, :cond_10c

    goto :goto_118

    :cond_10c
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    if-nez p1, :cond_113

    goto :goto_118

    :cond_113
    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :goto_118
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p0, :cond_11d

    goto :goto_121

    :cond_11d
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_121
    :goto_121
    return-void
.end method

.method public destroy(Z)V
    .registers 4

    const-string v0, "destroy, animate = "

    const-string v1, ", mAdapter = "

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarMainUIController"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->dismissToolTip()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    :goto_21
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-nez v0, :cond_26

    goto :goto_29

    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->destroy()V

    :goto_29
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-eqz v0, :cond_30

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->destroy(Z)V

    :cond_30
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez p1, :cond_3f

    goto :goto_43

    :cond_3f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_43
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    const/16 v0, 0x20

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f12055a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    :cond_57
    return-void
.end method

.method public final dismissToolTip()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->dismissToolTip()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {v0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public getContentLayoutId()I
    .registers 1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f0d0213

    goto :goto_d

    :cond_a
    const p0, 0x7f0d0212

    :goto_d
    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    return-object p0
.end method

.method public getContentViewHeight()I
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cbc

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_23

    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070cbb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_23
    return p0
.end method

.method public final getMAdapter()Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    return-object p0
.end method

.method public final getWidgetMoveToolTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;->onWallpaperBrightnessChanged()V

    :goto_8
    return-void
.end method

.method public final parserToggleBarContent(Lcom/android/launcher/Launcher;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/togglebar/item/ToggleBarItem;",
            ">;"
        }
    .end annotation

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeChangeWallpaperDisabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v3

    const/4 v4, 0x0

    :try_start_1b
    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v5, :cond_27

    const v5, 0x7f150029

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    goto :goto_2e

    :cond_27
    const v5, 0x7f150028

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    :goto_2e
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const-string v6, "items"

    invoke-static {v4, v6}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_37
    :goto_37
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_82

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    if-ne v6, v9, :cond_37

    sget-object v6, Lcom/android/launcher3/R$styleable;->TogPreview:[I

    invoke-virtual {p1, v5, v6}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    const-string v10, "item"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v3, v7, v2, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->isIgnoreItem(ZIZLcom/android/launcher/Launcher;)Z

    move-result v10

    if-eqz v10, :cond_5f

    goto :goto_37

    :cond_5f
    invoke-virtual {v6, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v6, v10, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v10, Lcom/android/launcher/togglebar/item/ToggleBarItem;

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v8, v9}, Lcom/android/launcher/togglebar/item/ToggleBarItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v7}, Lcom/android/launcher/togglebar/item/ToggleBarItem;->setViewId(I)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7b
    if-nez v6, :cond_7e

    goto :goto_37

    :cond_7e
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_81} :catch_88
    .catchall {:try_start_1b .. :try_end_81} :catchall_86

    goto :goto_37

    :cond_82
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_96

    :catchall_86
    move-exception p0

    goto :goto_97

    :catch_88
    move-exception p0

    :try_start_89
    const-string p1, "ToggleBarMainUIController"

    const-string v1, "Got IOException parsing  default_allapps favorites.  e = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_86

    if-nez v4, :cond_82

    :goto_96
    return-object v0

    :goto_97
    if-nez v4, :cond_9a

    goto :goto_9d

    :cond_9a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :goto_9d
    throw p0
.end method

.method public pause(IZ)V
    .registers 5

    if-eqz p2, :cond_8

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->animationContentAlpha(ZJ)V

    :cond_8
    return-void
.end method

.method public resume(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->updateAccessibilityFlags(Z)V

    return-void
.end method

.method public final setMAdapter(Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mAdapter:Lcom/android/launcher/togglebar/adapter/ToggleBarMainUIAdapter;

    return-void
.end method

.method public final setWidgetMoveToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final showToolTips()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->widgetMoveToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

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
    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportCardAndWidgetCombine:Z

    if-nez v0, :cond_1c

    goto :goto_2b

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->mContentView:Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;

    if-nez v0, :cond_21

    goto :goto_2b

    :cond_21
    new-instance v1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    :goto_2b
    return-void
.end method
