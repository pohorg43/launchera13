.class public final Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/RenderFailRetry;-><init>(Lcom/android/launcher3/card/CardModelWrapper;Lcom/android/launcher3/card/CommonCardView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/RenderFailRetry;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/RenderFailRetry;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/lang/String;I)V
    .registers 4

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_37

    iget-object p2, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-virtual {p2}, Lcom/android/launcher3/card/RenderFailRetry;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/oplus/card/helper/SmartEngineHelper$CardErrorCallback;->checkCardModel(Lcom/oplus/card/manager/domain/model/CardModel;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-virtual {p1}, Lcom/android/launcher3/card/RenderFailRetry;->getHostView()Lcom/android/launcher3/card/CommonCardView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/card/CommonCardView;->logCardInfo()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mErrorCallback post retry runnable."

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-virtual {p1}, Lcom/android/launcher3/card/RenderFailRetry;->getHostView()Lcom/android/launcher3/card/CommonCardView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/RenderFailRetry$errorCallback$1;->this$0:Lcom/android/launcher3/card/RenderFailRetry;

    invoke-static {p0}, Lcom/android/launcher3/card/RenderFailRetry;->access$getMRenderFailRunnable$p(Lcom/android/launcher3/card/RenderFailRetry;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_37
    return-void
.end method
