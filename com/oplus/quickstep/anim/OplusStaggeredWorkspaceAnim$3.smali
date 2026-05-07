.class Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->addStaggeredAnimationForView([Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

.field public final synthetic val$views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;[Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->this$0:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    iput-object p2, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->val$views:[Landroid/view/View;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_19

    aget-object v3, p1, v2

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/view/View;->getLayerType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->this$0:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->access$002(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;Z)Z

    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->this$0:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    iget-object v0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->val$views:[Landroid/view/View;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->access$100(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V

    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->this$0:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->val$views:[Landroid/view/View;

    invoke-static {p1, v1, p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->access$200(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 8

    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->val$views:[Landroid/view/View;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v3, p1, v1

    if-eqz v3, :cond_14

    if-nez v2, :cond_14

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->this$0:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    iget-object v0, p1, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isOverlayShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->access$002(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;Z)Z

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_3d

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isNotHighOSAnimation()Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->this$0:Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;

    const/high16 v0, 0x3f800000  # 1.0f

    iget-object p0, p0, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim$3;->val$views:[Landroid/view/View;

    invoke-static {p1, v0, p0}, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->access$100(Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;F[Landroid/view/View;)V

    :cond_3d
    return-void
.end method
