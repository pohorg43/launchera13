.class Lcom/android/launcher3/OplusWorkspace$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusWorkspace;->postSetCurrentPageVisibility(Lcom/android/launcher3/OplusWorkspace$PageState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic val$visible:Lcom/android/launcher3/OplusWorkspace$PageState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusWorkspace$4;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/OplusWorkspace$4;->val$visible:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$4;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v0}, Lcom/android/launcher3/OplusWorkspace;->access$000(Lcom/android/launcher3/OplusWorkspace;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$4;->this$0:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {v0}, Lcom/android/launcher3/OplusWorkspace;->access$000(Lcom/android/launcher3/OplusWorkspace;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$4;->this$0:Lcom/android/launcher3/OplusWorkspace;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->access$002(Lcom/android/launcher3/OplusWorkspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/OplusWorkspace$4;->this$0:Lcom/android/launcher3/OplusWorkspace;

    iget-object p0, p0, Lcom/android/launcher3/OplusWorkspace$4;->val$visible:Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher3/OplusWorkspace;->access$100(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/OplusWorkspace$PageState;IZ)V

    return-void
.end method
