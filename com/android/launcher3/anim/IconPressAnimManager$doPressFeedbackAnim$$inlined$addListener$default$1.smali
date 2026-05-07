.class public final Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $downEvent$inlined:Z

.field public final synthetic $downEvent$inlined$1:Z

.field public final synthetic $downEvent$inlined$2:Z

.field public final synthetic this$0:Lcom/android/launcher3/anim/IconPressAnimManager;


# direct methods
.method public constructor <init>(ZLcom/android/launcher3/anim/IconPressAnimManager;ZLcom/android/launcher3/anim/IconPressAnimManager;Lcom/android/launcher3/anim/IconPressAnimManager;Z)V
    .registers 7

    iput-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined:Z

    iput-object p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    iput-boolean p3, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$1:Z

    iput-boolean p6, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$1:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    sput-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    goto :goto_2f

    :cond_d
    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimatorStateForTouch(Z)V

    :cond_24
    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const-string p1, "LauncherIconFeedBackAnim"

    invoke-virtual {p0, v0, p1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    :goto_2f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1, v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$setMIsNeedToDelayCancelScaleAnim$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    sput-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    goto :goto_1d

    :cond_12
    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const-string v1, "LauncherIconFeedBackAnim"

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    :goto_1d
    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p0, v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$setMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    :cond_43
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ICON_PRESS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_48

    const-string p1, "IconPressAnimManager"

    const-string v1, "icon callback is null!"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1, v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$setMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    iget-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-static {v1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_48
    iget-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->$downEvent$inlined$2:Z

    if-eqz p1, :cond_54

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/anim/IconPressAnimManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->access$setMIsNeedToDelayCancelScaleAnim$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    sput-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    :cond_54
    return-void
.end method
