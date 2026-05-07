.class public final Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlphaPro"
.end annotation


# instance fields
.field private mIndicatorFromAlpha:F

.field private mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mToAlpha:F

.field private mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

.field private mToggleBarViewFromAlpha:F

.field private mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

.field private mToggleToolbarFromAlpha:F

.field private mWorkspace:Lcom/android/launcher3/OplusWorkspace;

.field private mWorkspaceFromAlpha:F


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Z)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarView()Lcom/android/launcher/togglebar/ToggleBarRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mWorkspaceFromAlpha:F

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleBarViewFromAlpha:F

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleToolbarFromAlpha:F

    iget-object p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mIndicatorFromAlpha:F

    if-eqz p2, :cond_50

    const/4 p1, 0x0

    goto :goto_52

    :cond_50
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_52
    iput p1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToAlpha:F

    return-void
.end method


# virtual methods
.method public final setAlpha(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mWorkspaceFromAlpha:F

    iget v2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToAlpha:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleBarViewFromAlpha:F

    iget v2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToAlpha:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleToolbarFromAlpha:F

    iget v2, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToAlpha:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToggleToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-static {v0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mPageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iget v1, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mIndicatorFromAlpha:F

    iget p0, p0, Lcom/android/launcher/togglebar/animation/WidgetTransitionContentTarget$AlphaPro;->mToAlpha:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
