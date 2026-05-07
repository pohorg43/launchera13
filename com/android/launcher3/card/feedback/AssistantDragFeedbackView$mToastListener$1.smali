.class public final Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;-><init>(Lcom/android/launcher3/Launcher;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;->this$0:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;->this$0:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    invoke-static {p1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->access$getMItemType$p(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_16

    const/16 v0, 0x63

    if-eq p1, v0, :cond_16

    const p1, 0x7f120169

    goto :goto_19

    :cond_16
    const p1, 0x7f12016b

    :goto_19
    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;->this$0:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void
.end method
