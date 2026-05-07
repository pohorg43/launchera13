.class public final Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;
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

.field public final synthetic $scaleRange$inlined:[F

.field public final synthetic $toAlpha$inlined:F

.field public final synthetic $workspace$inlined:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(ZF[FLcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$folderClose$inlined:Z

    iput p2, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$toAlpha$inlined:F

    iput-object p3, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$scaleRange$inlined:[F

    iput-object p4, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$workspace$inlined:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Anim Cancel when folderClose: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$folderClose$inlined:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", set alpha to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$toAlpha$inlined:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", set scale to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$scaleRange$inlined:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const-string v2, "FolderAnimUtil"

    invoke-static {p1, v0, v2}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$workspace$inlined:Lcom/android/launcher3/OplusWorkspace;

    iget v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$toAlpha$inlined:F

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$workspace$inlined:Lcom/android/launcher3/OplusWorkspace;

    iget-object v0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$scaleRange$inlined:[F

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$workspace$inlined:Lcom/android/launcher3/OplusWorkspace;

    iget-object p0, p0, Lcom/android/launcher3/anim/light/FolderAnimUtil$getLightLauncherContentAnim$$inlined$doOnCancel$1;->$scaleRange$inlined:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setScaleY(F)V

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
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
