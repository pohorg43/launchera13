.class Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->applySelectedState(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

.field public final synthetic val$endAlpha:I

.field public final synthetic val$endScale:I

.field public final synthetic val$isFadeIn:Z

.field public final synthetic val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;ZLcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;II)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$isFadeIn:Z

    iput-object p3, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    iput p4, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$endAlpha:I

    iput p5, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$endScale:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->access$102(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$selectStateDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->isFadeAnimating:Z

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$endAlpha:I

    iput v0, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$endScale:I

    int-to-float v0, v0

    iput v0, p1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    invoke-static {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->access$200(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;)Lcom/android/launcher3/iconrender/RenderManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->val$isFadeIn:Z

    if-nez p1, :cond_20

    const-string p1, "SelectStateIconRenderer"

    const-string v0, "applySelectedState  onAnimationStart"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    invoke-static {p1}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->access$000(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p1

    if-eqz p1, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer$1;->this$0:Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    invoke-static {p0}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->access$000(Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    :cond_20
    return-void
.end method
