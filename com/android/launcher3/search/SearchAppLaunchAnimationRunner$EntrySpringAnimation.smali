.class public final Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntrySpringAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;
    }
.end annotation


# static fields
.field private static final BLUR_RADIUS:F = 150.0f

.field public static final Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;

.field private static final DAMPING_RATIO_CLOSE:F = 0.8f

.field private static final DAMPING_RATIO_OPEN:F = 0.74f

.field private static final ENTRY_ANIM_PROGRESS:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

.field private static final STIFFNESS_CLOSE_ANIM:F = 200.0f

.field private static final STIFFNESS_OPEN_ANIM:F = 92.0f


# instance fields
.field private mEndBlurRadius:F

.field private mEndDepth:F

.field private mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

.field private mEntryEndAlpha:F

.field private mEntryEndBgHeight:I

.field private mEntryEndBgWidth:I

.field private mEntryEndTransY:F

.field private mEntryStartAlpha:F

.field private mEntryStartBgHeight:I

.field private mEntryStartBgWidth:I

.field private mEntryStartTransY:F

.field private mEntryView:Lcom/android/launcher3/search/SearchEntryView;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOpenApp:Z

.field private mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

.field private mSpringProgress:F

.field private mStartBlurRadius:F

.field private mStartDepth:F

.field private mWorkspaceEndAlpha:F

.field private mWorkspaceEndScale:F

.field private mWorkspaceStartAlpha:F

.field private mWorkspaceStartScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->Companion:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion;

    new-instance v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->ENTRY_ANIM_PROGRESS:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Z)V
    .registers 5

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntryView;->getTempBgWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartBgWidth:I

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    if-eqz p1, :cond_3d

    const/16 p1, 0x39c

    goto :goto_46

    :cond_3d
    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    :goto_46
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndBgWidth:I

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntryView;->getTempBgHeight()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartBgHeight:I

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    if-eqz p1, :cond_67

    const/16 p1, 0x90

    goto :goto_70

    :cond_67
    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p1

    :goto_70
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndBgHeight:I

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartTransY:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_85

    const/high16 p1, -0x3c060000  # -500.0f

    goto :goto_86

    :cond_85
    move p1, p2

    :goto_86
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndTransY:F

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartAlpha:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p1, :cond_9b

    move p1, p2

    goto :goto_9c

    :cond_9b
    move p1, v0

    :goto_9c
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndAlpha:F

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceStartAlpha:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    if-eqz p1, :cond_b0

    move p1, p2

    goto :goto_b1

    :cond_b0
    move p1, v0

    :goto_b1
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceEndAlpha:F

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceStartScale:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    if-eqz p1, :cond_c6

    const v0, 0x3f6b851f  # 0.92f

    :cond_c6
    iput v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceEndScale:F

    iget-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentDepth()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartDepth:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    if-eqz p1, :cond_dd

    invoke-static {}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getAppDepth()F

    move-result p1

    goto :goto_de

    :cond_dd
    move p1, p2

    :goto_de
    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndDepth:F

    iget-boolean p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    const/high16 v0, 0x43160000  # 150.0f

    if-eqz p1, :cond_e8

    move v1, p2

    goto :goto_e9

    :cond_e8
    move v1, v0

    :goto_e9
    iput v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartBlurRadius:F

    if-eqz p1, :cond_ee

    move p2, v0

    :cond_ee
    iput p2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndBlurRadius:F

    return-void
.end method

.method public static final synthetic access$getMSpringProgress$p(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringProgress:F

    return p0
.end method

.method public static final synthetic access$onUpdate(Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->onUpdate(F)V

    return-void
.end method

.method private final onUpdate(F)V
    .registers 5

    iput p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringProgress:F

    iget v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartBgWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndBgWidth:I

    int-to-float v1, v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/search/SearchEntryView;->setTempBgWidth(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartBgHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndBgHeight:I

    int-to-float v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SearchEntryView;->setTempBgHeight(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartTransY:F

    iget v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndTransY:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryView:Lcom/android/launcher3/search/SearchEntryView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryStartAlpha:F

    iget v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEntryEndAlpha:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceStartAlpha:F

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceEndAlpha:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    iget v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceStartScale:F

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mWorkspaceEndScale:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartDepth:F

    iget v2, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndDepth:F

    invoke-static {p1, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBlurScrimWindowController()Lcom/android/launcher/touch/BlurScrimWindowController;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mStartBlurRadius:F

    iget p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndBlurRadius:F

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/android/launcher/touch/BlurScrimWindowController;->blurBackground(I)V

    return-void
.end method


# virtual methods
.method public final addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

    return-void
.end method

.method public final cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->cancel()V

    :goto_8
    return-void
.end method

.method public final isRunning()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v1, :cond_e

    move v0, v1

    :cond_e
    :goto_e
    return v0
.end method

.method public final start()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mOpenApp:Z

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_19

    new-instance v0, Lcom/oplus/animation/SpringForce;

    invoke-direct {v0, v1}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    const v1, 0x3f3d70a4  # 0.74f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x42b80000  # 92.0f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    goto :goto_2b

    :cond_19
    new-instance v0, Lcom/oplus/animation/SpringForce;

    invoke-direct {v0, v1}, Lcom/oplus/animation/SpringForce;-><init>(F)V

    const v1, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setDampingRatio(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000  # 200.0f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringForce;->setStiffness(F)Lcom/oplus/animation/SpringForce;

    move-result-object v0

    :goto_2b
    new-instance v1, Lcom/oplus/animation/SpringAnimation;

    sget-object v2, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->ENTRY_ANIM_PROGRESS:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation$Companion$ENTRY_ANIM_PROGRESS$1;

    invoke-direct {v1, p0, v2}, Lcom/oplus/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;)V

    invoke-virtual {v1, v0}, Lcom/oplus/animation/SpringAnimation;->setSpring(Lcom/oplus/animation/SpringForce;)Lcom/oplus/animation/SpringAnimation;

    move-result-object v0

    const v1, 0x3b03126f  # 0.002f

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/SpringAnimation;

    iput-object v0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v1, :cond_4d

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mEndListener:Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/animation/DynamicAnimation;

    :cond_4d
    iget-object p0, p0, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner$EntrySpringAnimation;->mSpringAnimation:Lcom/oplus/animation/SpringAnimation;

    if-nez p0, :cond_52

    goto :goto_55

    :cond_52
    invoke-virtual {p0}, Lcom/oplus/animation/SpringAnimation;->start()V

    :goto_55
    return-void
.end method
