.class public final Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScalePro"
.end annotation


# instance fields
.field private mLauncherState:Lcom/android/launcher3/LauncherState;

.field private mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mPageIndicatorFromScale:F

.field private mPageIndicatorToScale:F

.field private mScaleFactor:F

.field private mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

.field private mToggleBarViewFromScale:F

.field private mToggleBarViewToScale:F

.field private mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

.field private mToggleToolbarFromScale:F

.field private mToggleToolbarToScale:F

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;

.field private mWorkspaceFromScale:F

.field private mWorkspaceToScale:F


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Z)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p2, :cond_10

    const p2, 0x3f733333  # 0.95f

    goto :goto_11

    :cond_10
    move p2, v0

    :goto_11
    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mScaleFactor:F

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/LauncherState;

    iput-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarView()Lcom/android/launcher/togglebar/ToggleBarRootView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p2

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspaceFromScale:F

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_72

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz p2, :cond_72

    sget-object p2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mScaleFactor:F

    goto :goto_7c

    :cond_72
    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mScaleFactor:F

    :goto_7c
    mul-float/2addr p2, v1

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspaceToScale:F

    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result p2

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarViewFromScale:F

    iget p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mScaleFactor:F

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarViewToScale:F

    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p2

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbarFromScale:F

    iget p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mScaleFactor:F

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbarToScale:F

    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicatorFromScale:F

    iget p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspaceToScale:F

    iput p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicatorToScale:F

    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    const-string/jumbo v0, "mToggleToolbar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const-string/jumbo v1, "mWorkspace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->setPivotToScaleWithWorkspace(Landroid/view/View;Lcom/android/launcher3/OplusWorkspace;)V

    iget-object p2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    neg-int p1, p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    return-void
.end method


# virtual methods
.method public final setScale(F)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspaceFromScale:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspaceToScale:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarViewFromScale:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarViewToScale:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbarFromScale:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbarToScale:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicatorFromScale:F

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicatorToScale:F

    invoke-static {v1, v0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$ScalePro;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setScaleY(F)V

    return-void
.end method
