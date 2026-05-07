.class public final Lcom/android/launcher3/folder/FolderTransitionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderTransitionController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/FolderTransitionController$Companion;

.field private static final DURATION_ZOOM_IN:J = 0x14dL

.field private static final DURATION_ZOOM_OUT:J = 0x12cL

.field private static final FOLDER_MIN_SCALE_ANIMATION:F = 0.95f

.field private static final FOLDER_NORMAL_SCALE:F = 1.0f

.field private static final INTERPOLATOR_ZOOM_IN:Landroid/view/animation/PathInterpolator;

.field private static final INTERPOLATOR_ZOOM_OUT:Landroid/view/animation/PathInterpolator;

.field private static final KEY_FRAME_FRACTION:F = 0.47f

.field private static final TAG:Ljava/lang/String; = "FolderTransitionController"


# instance fields
.field private mLauncher:Lcom/android/launcher/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderTransitionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderTransitionController;->Companion:Lcom/android/launcher3/folder/FolderTransitionController$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/FolderTransitionController;->INTERPOLATOR_ZOOM_OUT:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/FolderTransitionController;->INTERPOLATOR_ZOOM_IN:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method private final folderAnimationForToggleBar(Lcom/android/launcher3/folder/Folder;)Landroid/animation/Animator;
    .registers 7

    const-string p0, "FolderTransitionController"

    const-string v0, "init folderAnimationForToggleBar"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p0

    const v1, 0x3ef0a3d7  # 0.47f

    const v2, 0x3f733333  # 0.95f

    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/folder/FolderTransitionController;->INTERPOLATOR_ZOOM_OUT:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/folder/FolderTransitionController;->INTERPOLATOR_ZOOM_IN:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Keyframe;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v1, v3, p0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v4

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string/jumbo p1, "ofPropertyValuesHolder(f…er, propertyValuesHolder)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final folderRecommendAnimForToggleBar(Lcom/android/launcher3/folder/Folder;Z)Landroid/animation/Animator;
    .registers 4

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->isSupportRecommendSetting()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_a

    return-object v0

    :cond_a
    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0, p2}, Lcom/android/launcher/folder/recommend/FooterController;->folderRecommendAnimForToggleBar(Z)Landroid/animation/Animator;

    move-result-object v0

    :goto_15
    return-object v0
.end method


# virtual methods
.method public setState(Lcom/android/launcher3/LauncherState;)V
    .registers 2

    const-string/jumbo p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderTransitionController;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 6

    const-string/jumbo v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "animation"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/statemanager/StateManager;->isDragLayerInternalAnimateAllowed(Lcom/android/launcher3/LauncherState;)Z

    move-result p2

    if-nez p2, :cond_1d

    return-void

    :cond_1d
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p2}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p2

    if-nez p2, :cond_26

    return-void

    :cond_26
    instance-of v0, p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    if-nez v0, :cond_36

    const-string p0, "Don\'t support the state: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FolderTransitionController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->fromNormalToToggleBar(Lcom/android/launcher/Launcher;Lcom/android/launcher3/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/FolderTransitionController;->folderAnimationForToggleBar(Lcom/android/launcher3/folder/Folder;)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v0, 0x279

    invoke-virtual {p3, p1, v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;J)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/folder/FolderTransitionController;->folderRecommendAnimForToggleBar(Lcom/android/launcher3/folder/Folder;Z)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_72

    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/PendingAnimation;->addWithoutDuration(Landroid/animation/Animator;)V

    goto :goto_72

    :cond_60
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/folder/FolderTransitionController;->folderRecommendAnimForToggleBar(Lcom/android/launcher3/folder/Folder;Z)Landroid/animation/Animator;

    move-result-object p0

    if-eqz p0, :cond_72

    invoke-virtual {p3, p0}, Lcom/android/launcher3/anim/PendingAnimation;->addWithoutDuration(Landroid/animation/Animator;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .registers 4

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderTransitionController;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method
