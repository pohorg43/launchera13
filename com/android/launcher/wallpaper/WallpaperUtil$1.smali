.class Lcom/android/launcher/wallpaper/WallpaperUtil$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/WallpaperUtil;->getLauncherContentAnimWithGaussian(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusDragLayer;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$closeFolderBlur:F

.field public final synthetic val$closeFolderDepth:F

.field public final synthetic val$depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

.field public final synthetic val$launcher:Lcom/android/launcher/Launcher;

.field public final synthetic val$openFolderBlur:F

.field public final synthetic val$openFolderDepth:F

.field public final synthetic val$show:Z


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/uioverrides/states/OplusDepthController;FFFFLcom/android/launcher/Launcher;)V
    .registers 8

    iput-boolean p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$show:Z

    iput-object p2, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iput p3, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$closeFolderDepth:F

    iput p4, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$openFolderDepth:F

    iput p5, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$closeFolderBlur:F

    iput p6, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$openFolderBlur:F

    iput-object p7, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "Depth animation end. show "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$show:Z

    const-string v1, "WallpaperUtil"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-boolean v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$show:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$closeFolderDepth:F

    goto :goto_18

    :cond_16
    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$openFolderDepth:F

    :goto_18
    invoke-virtual {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    iget-boolean v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$show:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$closeFolderBlur:F

    goto :goto_26

    :cond_24
    iget v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$openFolderBlur:F

    :goto_26
    invoke-virtual {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    iget-boolean p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$show:Z

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$launcher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$1;->val$depthController:Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepth(F)V

    :cond_3d
    return-void
.end method
