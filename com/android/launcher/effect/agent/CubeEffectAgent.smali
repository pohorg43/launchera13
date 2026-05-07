.class public Lcom/android/launcher/effect/agent/CubeEffectAgent;
.super Lcom/android/launcher/effect/EffectAgent;
.source ""


# static fields
.field private static final DEBUG_ENABLE:Z = false

.field private static final MAX_ROTATION:F = 90.0f

.field private static final STANDARD_CAMERA_DISTANCE:F = 1280.0f

.field private static final TAG:Ljava/lang/String; = "CubeEffectAgent"

.field private static final TARGET_CAMERA_DISTANCE:F = 4200.0f


# instance fields
.field private mDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/effect/EffectAgent;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/effect/agent/CubeEffectAgent;->mDensity:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/android/launcher/effect/agent/CubeEffectAgent;->mDensity:F

    return-void
.end method


# virtual methods
.method public applyCubeEffect(I)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_96

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_96

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->getVisibleChildrenRange()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mTempVisiblePagesRange:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    const v2, 0x45834000  # 4200.0f

    const/high16 v3, 0x40000000  # 2.0f

    const/4 v4, 0x0

    if-ne v1, v0, :cond_53

    iget-object v5, p0, Lcom/android/launcher/effect/EffectAgent;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object p1, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-virtual {p1, v4}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    iget p0, p0, Lcom/android/launcher/effect/agent/CubeEffectAgent;->mDensity:F

    mul-float/2addr p0, v2

    invoke-virtual {p1, p0}, Landroid/view/View;->setCameraDistance(F)V

    :cond_52
    return-void

    :cond_53
    :goto_53
    if-gt v1, v0, :cond_96

    iget-object v5, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    if-eqz v5, :cond_93

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v6, p1, v5, v1}, Lcom/android/launcher3/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    cmpl-float v7, v6, v4

    if-lez v7, :cond_7f

    const/high16 v7, -0x3d4c0000  # -90.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    goto :goto_87

    :cond_7f
    const/high16 v7, 0x42b40000  # 90.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v7

    move v7, v4

    :goto_87
    iget v8, p0, Lcom/android/launcher/effect/agent/CubeEffectAgent;->mDensity:F

    mul-float/2addr v8, v2

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setCameraDistance(F)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setRotationY(F)V

    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_96
    :goto_96
    return-void
.end method

.method public applyWorkspaceEffect(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/effect/agent/CubeEffectAgent;->applyCubeEffect(I)V

    return-void
.end method

.method public backUpParameters()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    invoke-direct {v1}, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    const/4 v1, 0x0

    if-lez v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->setRotationY(F)V

    iget-object p0, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->setTranslationX(F)V

    goto :goto_31

    :cond_2f
    iput-object v1, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    :goto_31
    const/4 p0, 0x1

    return p0

    :cond_33
    iput-object v1, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    const/4 p0, 0x0

    return p0
.end method

.method public restoreParameters()V
    .registers 6

    invoke-super {p0}, Lcom/android/launcher/effect/EffectAgent;->restoreParameters()V

    iget-object v0, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_55

    iget-object v2, p0, Lcom/android/launcher/effect/EffectAgent;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_52

    iget-object v3, p0, Lcom/android/launcher/effect/EffectAgent;->mChildDefaultParams:Lcom/android/launcher/effect/EffectAgent$TransformationInfo;

    const/high16 v4, 0x40000000  # 2.0f

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/android/launcher/effect/EffectAgent$TransformationInfo;->getRotationY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_4a

    :cond_34
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    :goto_4a
    const/high16 v3, 0x44a00000  # 1280.0f

    iget v4, p0, Lcom/android/launcher/effect/agent/CubeEffectAgent;->mDensity:F

    mul-float/2addr v4, v3

    invoke-virtual {v2, v4}, Landroid/view/View;->setCameraDistance(F)V

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_55
    return-void
.end method
