.class public final Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/FolderAnimUtil;->getLightLauncherContentAnim(Lcom/android/launcher/Launcher;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $folderClose$inlined:Z

.field public final synthetic $hotseat$inlined:Lcom/android/launcher3/OplusHotseat;

.field public final synthetic $pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field public final synthetic $workspace$inlined:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;ZLcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    iput-boolean p2, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$folderClose$inlined:Z

    iput-object p3, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$hotseat$inlined:Lcom/android/launcher3/OplusHotseat;

    iput-object p4, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$workspace$inlined:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->cancelReplaceAnimation()V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$folderClose$inlined:Z

    if-eqz p1, :cond_2a

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$hotseat$inlined:Lcom/android/launcher3/OplusHotseat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusHotseat;->setAnimVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$workspace$inlined:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->setVisibility(I)V

    sget-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-nez p1, :cond_2a

    iget-object p0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnStart$1;->$pageIndicator$inlined:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setAnimVisibility(I)V

    :cond_2a
    return-void
.end method
