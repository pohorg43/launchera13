.class Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->iconFallenAuto(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

.field public final synthetic val$dir:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    iput p2, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->val$dir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-virtual {p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->isInstateIconFallen()Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$400(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$500(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getOpenFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->val$dir:I

    invoke-static {}, Lcom/android/launcher/iconfallen/IconFallenUtils;->getsThresholdValue()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher3/OplusWorkspace;->iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$500(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    const/16 v0, 0x45

    const-wide/16 v1, 0x32

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    iget-object p1, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->this$0:Lcom/android/launcher3/util/OplusIconFallenAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/util/OplusIconFallenAnimationManager;->access$500(Lcom/android/launcher3/util/OplusIconFallenAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/util/OplusIconFallenAnimationManager$6;->val$dir:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusWorkspace;->iconFallenComplete(I)V

    :cond_43
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_ICON_FALLEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method
