.class Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/views/OplusClearAllPanelView;->playEnterAnimation(Lcom/android/launcher3/LauncherState;ZILcom/android/launcher3/states/StateAnimationConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

.field public final synthetic val$rotation:I


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    iput p2, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->val$rotation:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_CLEAR_BUTTON_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->needShowPhoneManagerEntranceAtLast()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5a

    iget-object p1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$100(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    move-result-object p1

    iget v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->val$rotation:I

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {v1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$000(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Lcom/android/launcher/views/PressFeedbackButton;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;->updatePhoneManagerEntrancePositionWhenRotation(ILandroid/view/View;)V

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->INSTANCE:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->hasShowGuide()Z

    move-result v0

    if-nez v0, :cond_5a

    iget v0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->val$rotation:I

    if-nez v0, :cond_5a

    const-string v0, "showPhoneManagerEntranceTip  getAlpha:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusClearAllPanelView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView$2;->this$0:Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->access$100(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)Lcom/oplus/quickstep/views/OplusCleanStorageFrameLayout;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceGuide;->showPhoneManagerEntranceTip(Landroid/view/View;)V

    :cond_5a
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->ENTER_CLEAR_BUTTON_VIEW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
