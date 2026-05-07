.class Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->enterNormalSplitUncheck(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$602(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;J)J

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1700(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager$6;->this$0:Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->access$1600(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V

    return-void
.end method
