.class Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/interaction/EdgeBackGesturePanel$BackCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/interaction/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelBack()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->access$000(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->access$000(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->access$100(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getIsLeftPanel()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    goto :goto_1f

    :cond_1d
    sget-object p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_CANCELLED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    :goto_1f
    invoke-interface {v0, p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;->onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V

    :cond_22
    return-void
.end method

.method public triggerBack()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->access$000(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->access$000(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$1;->this$0:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-static {p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->access$100(Lcom/android/quickstep/interaction/EdgeBackGestureHandler;)Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->getIsLeftPanel()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_LEFT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    goto :goto_1f

    :cond_1d
    sget-object p0, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;->BACK_COMPLETED_FROM_RIGHT:Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;

    :goto_1f
    invoke-interface {v0, p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;->onBackGestureAttempted(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureResult;)V

    :cond_22
    return-void
.end method
