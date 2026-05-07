.class public final Lcom/android/quickstep/OplusBaseTouchInteractionService$initSystemGestureInfo$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusBaseTouchInteractionService;->initSystemGestureInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeFromBottom()V
    .registers 3

    const-string p0, "QuickStep"

    const-string v0, "OplusBaseTouchInteractionService"

    const-string/jumbo v1, "swipe from bottom, so we should show toast when we are in game mode"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {p0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->forceShowToast()V

    return-void
.end method

.method public onSwipeFromLeft()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks$DefaultImpls;->onSwipeFromLeft(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;)V

    return-void
.end method

.method public onSwipeFromRight()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks$DefaultImpls;->onSwipeFromRight(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;)V

    return-void
.end method

.method public onSwipeFromTop()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks$DefaultImpls;->onSwipeFromTop(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;)V

    return-void
.end method
