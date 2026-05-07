.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->lambda$continueApplyDividerVisibility$6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

.field public final synthetic val$dividerAnim:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/animation/Animator;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$8;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$8;->val$dividerAnim:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$8;->val$dividerAnim:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$8;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1800(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    return-void
.end method
