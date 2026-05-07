.class Lcom/android/launcher3/OplusWorkspace$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusWorkspace;->doKeyguardDismissedAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace$6;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/OplusWorkspace;->access$400()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "OplusWorkspace"

    const-string v0, "doKeyguardDismissedAnim onAnimationCancel"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$6;->this$0:Lcom/android/launcher3/OplusWorkspace;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->access$002(Lcom/android/launcher3/OplusWorkspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$6;->this$0:Lcom/android/launcher3/OplusWorkspace;

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-static {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->access$302(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;)Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-static {}, Lcom/android/launcher3/OplusWorkspace;->access$400()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "OplusWorkspace"

    const-string v1, "doKeyguardDismissedAnim onAnimationEnd"

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$6;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p1}, Lcom/android/launcher3/OplusWorkspace;->access$500(Lcom/android/launcher3/OplusWorkspace;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/OplusWorkspace;->access$600(Lcom/android/launcher3/OplusWorkspace;ILcom/android/launcher3/OplusWorkspace$PageState;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusWorkspace$6;->this$0:Lcom/android/launcher3/OplusWorkspace;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->access$502(Lcom/android/launcher3/OplusWorkspace;I)I

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$6;->this$0:Lcom/android/launcher3/OplusWorkspace;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->access$002(Lcom/android/launcher3/OplusWorkspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$6;->this$0:Lcom/android/launcher3/OplusWorkspace;

    sget-object p1, Lcom/android/launcher3/OplusWorkspace$PageState;->ANIMATING:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-static {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->access$302(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;)Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-static {}, Lcom/android/launcher3/OplusWorkspace;->access$400()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "OplusWorkspace"

    const-string p1, "doKeyguardDismissedAnim onAnimationStart"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return-void
.end method
