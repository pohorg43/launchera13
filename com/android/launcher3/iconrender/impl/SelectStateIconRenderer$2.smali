.class Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->setSelectedWithAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

.field public final synthetic val$scaleDown:Landroid/animation/ValueAnimator;

.field public final synthetic val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

.field public final synthetic val$selected:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;ZLandroid/animation/ValueAnimator;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    iput-boolean p3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->val$selected:Z

    iput-object p4, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->val$scaleDown:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    iget-boolean v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->val$selected:Z

    iput-boolean v0, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->selected:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->stateSwitching:Z

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    iget-object p1, p1, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->mHostView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$2;->val$scaleDown:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
