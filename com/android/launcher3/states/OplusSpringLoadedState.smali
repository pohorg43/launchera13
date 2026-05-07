.class public Lcom/android/launcher3/states/OplusSpringLoadedState;
.super Lcom/android/launcher3/states/SpringLoadedState;
.source ""


# static fields
.field private static final LOAD_TRANSLATE_DURATION:I = 0x205

.field public static final LOAD_TRANSLATE_PATH:Landroid/view/animation/Interpolator;

.field private static final SPRING_LOADED_SCALE_SINGLE_PANEL:F = 0.89f

.field private static final SPRING_LOADED_WP_SCALE_TWO_PANELS:F = 0.9f


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e051eb8  # 0.13f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/states/OplusSpringLoadedState;->LOAD_TRANSLATE_PATH:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/states/SpringLoadedState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBlurUnchecked(Landroid/content/Context;)F
    .registers 3

    invoke-static {p1}, Lcom/android/common/util/PlatformLevelUtils;->isDynamicBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/launcher3/states/SpringLoadedState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3

    const/16 p0, 0x205

    return p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz p0, :cond_c

    const p0, 0x3f666666  # 0.9f

    goto :goto_f

    :cond_c
    const p0, 0x3f63d70a  # 0.89f

    :goto_f
    new-instance p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p1
.end method
