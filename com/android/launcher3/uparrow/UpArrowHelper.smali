.class public final Lcom/android/launcher3/uparrow/UpArrowHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/uparrow/IUpArrowItf;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-direct {v0}, Lcom/android/launcher3/uparrow/UpArrowHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addUpArrow()V
    .registers 1

    return-void
.end method

.method public hadInterruptShowPageIndicator(Lcom/android/launcher3/LauncherState;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public hidePageIndicator()V
    .registers 1

    return-void
.end method

.method public hideUpArrow()V
    .registers 1

    return-void
.end method

.method public isCanShowUpArrow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isEnableUpArrow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isNormalState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportPullUp()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onPageBeginTransitionForUpArrow()V
    .registers 1

    return-void
.end method

.method public onPageEndTransitionForUpArrow()V
    .registers 1

    return-void
.end method

.method public onShowPageIndicator()V
    .registers 1

    return-void
.end method

.method public onShowUpArrow()V
    .registers 1

    return-void
.end method

.method public reLayoutUpArrow()V
    .registers 1

    return-void
.end method

.method public readyGoToToggleBarState()V
    .registers 1

    return-void
.end method

.method public removeUpArrow()V
    .registers 1

    return-void
.end method

.method public setIndicatorArrowVisibility(I)V
    .registers 2

    return-void
.end method

.method public final setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    return-void
.end method

.method public setUpArrowAlpha(F)V
    .registers 2

    return-void
.end method

.method public showUpArrow()V
    .registers 1

    return-void
.end method
