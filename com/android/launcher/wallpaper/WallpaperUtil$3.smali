.class Lcom/android/launcher/wallpaper/WallpaperUtil$3;
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
.field public final synthetic val$dragLayer:Lcom/android/launcher3/OplusDragLayer;

.field public final synthetic val$launcher:Lcom/android/launcher/Launcher;

.field public final synthetic val$show:Z

.field public final synthetic val$workSpace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher3/OplusDragLayer;Lcom/android/launcher/Launcher;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$workSpace:Lcom/android/launcher3/OplusWorkspace;

    iput-boolean p2, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$show:Z

    iput-object p3, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$dragLayer:Lcom/android/launcher3/OplusDragLayer;

    iput-object p4, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private resetViewsIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$workSpace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$workSpace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_10
    iget-boolean v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$show:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$dragLayer:Lcom/android/launcher3/OplusDragLayer;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusDragLayer;->resetViewsProperty(Lcom/android/launcher3/Launcher;)V

    goto :goto_22

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->val$workSpace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->setVisibility(I)V

    :goto_22
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->resetViewsIfNeed()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperUtil$3;->resetViewsIfNeed()V

    return-void
.end method
