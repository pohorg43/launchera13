.class Lcom/android/launcher/wallpaper/WallpaperUtil$2;
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
.field public final synthetic val$hotSeat:Lcom/android/launcher3/OplusHotseat;

.field public final synthetic val$indicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field public final synthetic val$launcher:Lcom/android/launcher/Launcher;

.field public final synthetic val$show:Z

.field public final synthetic val$workSpace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher3/OplusWorkspace;ZLcom/android/launcher/Launcher;Lcom/android/launcher3/OplusHotseat;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$indicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-object p2, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$workSpace:Lcom/android/launcher3/OplusWorkspace;

    iput-boolean p3, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$show:Z

    iput-object p4, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$launcher:Lcom/android/launcher/Launcher;

    iput-object p5, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$hotSeat:Lcom/android/launcher3/OplusHotseat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-boolean p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$show:Z

    if-nez p1, :cond_b

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$hotSeat:Lcom/android/launcher3/OplusHotseat;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setAnimVisibility(I)V

    goto :goto_38

    :cond_b
    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$indicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    sget-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$indicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimVisibility(I)V

    :cond_21
    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$hotSeat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$launcher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$hotSeat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusHotseat;->setAnimVisibility(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$indicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->cancelReplaceAnimation()V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$workSpace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$indicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimVisibility(I)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-nez p1, :cond_30

    iget-boolean p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$show:Z

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$launcher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_30

    :cond_29
    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$hotSeat:Lcom/android/launcher3/OplusHotseat;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setAnimVisibility(I)V

    goto :goto_35

    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperUtil$2;->val$hotSeat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusHotseat;->setAnimVisibility(I)V

    :goto_35
    return-void
.end method
