.class public final Lcom/android/launcher3/views/FloatingIconViewContainer;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;,
        Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;
    }
.end annotation


# static fields
.field public static final CLICK_TO_OPEN_FOLDER:I = 0x2

.field public static final Companion:Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;

.field private static final INVALID_SCREEN_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FloatingIconViewContainer"

.field public static final TO_ALL_APPS:I = 0x3

.field public static final TO_ASSISTANT_SCREEN:I = 0x4

.field public static final TO_BROWSER_NEWS:I = 0x8

.field public static final WORKSPACE_TRANSITION:I = 0x1


# instance fields
.field private isBracketSpaceRunning:Z

.field private isGestureStarted:Z

.field private mCurrentWindowAlpha:F

.field private mDeferredCallback:Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;

.field private mFinished:Z

.field private mHotseatIcon:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOriginalView:Landroid/view/View;

.field private mParentScreenId:I

.field private mWorkspaceBeginScrollX:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/views/FloatingIconViewContainer;->Companion:Lcom/android/launcher3/views/FloatingIconViewContainer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mCurrentWindowAlpha:F

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    const-string p2, "fromContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private final calculateScrollX()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mWorkspaceBeginScrollX:I

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final alphaChanged(FI)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mHotseatIcon:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    if-eq v0, p2, :cond_d

    goto :goto_10

    :cond_d
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_10
    :goto_10
    return-void
.end method

.method public final begin(ZLandroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setVisibility(I)V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mWorkspaceBeginScrollX:I

    iput-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mHotseatIcon:Z

    iput-object p2, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    const/4 p1, 0x0

    if-nez p2, :cond_20

    :goto_1e
    move-object v0, p1

    goto :goto_2b

    :cond_20
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_1e

    :cond_27
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2b
    instance-of v0, v0, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_49

    if-nez p2, :cond_32

    goto :goto_3d

    :cond_32
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_39

    goto :goto_3d

    :cond_39
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_3d
    const-string p2, "null cannot be cast to non-null type com.android.launcher3.CellLayout"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p1

    goto :goto_4a

    :cond_49
    const/4 p1, -0x1

    :goto_4a
    iput p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    return-void
.end method

.method public final doTranslationIfNeeded()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mHotseatIcon:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mCurrentWindowAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    goto :goto_18

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->calculateScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_18
    :goto_18
    return-void
.end method

.method public final finish()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mWorkspaceBeginScrollX:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mParentScreenId:I

    return-void
.end method

.method public final getMOriginalView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    return-object p0
.end method

.method public final isFinished()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mFinished:Z

    return p0
.end method

.method public final isGestureStarted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isGestureStarted:Z

    return p0
.end method

.method public final runDeferredCallback(I)V
    .registers 4

    const-string v0, "runDeferredCallback, reason = "

    const-string v1, ", callback = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mDeferredCallback:Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatingIconViewContainer"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_25

    invoke-static {}, Lcom/android/launcher/effect/EffectSetting;->isCurrentNormalEffect()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string p0, "runDeferredCallback return as normal effect"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mDeferredCallback:Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;

    if-eqz v0, :cond_32

    if-nez v0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-interface {v0, p1}, Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;->run(I)V

    :goto_2f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mDeferredCallback:Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;

    :cond_32
    return-void
.end method

.method public final setBracketSpaceRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isBracketSpaceRunning:Z

    return-void
.end method

.method public final setDeferredCallback(Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mDeferredCallback:Lcom/android/launcher3/views/FloatingIconViewContainer$DeferredCallback;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    iput-boolean p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isGestureStarted:Z

    return-void
.end method

.method public final setMOriginalView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mOriginalView:Landroid/view/View;

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->isBracketSpaceRunning:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setWindowAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/views/FloatingIconViewContainer;->mCurrentWindowAlpha:F

    return-void
.end method
