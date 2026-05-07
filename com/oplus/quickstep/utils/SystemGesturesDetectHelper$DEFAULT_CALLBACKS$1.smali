.class public final Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$DEFAULT_CALLBACKS$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;-><clinit>()V
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
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks$DefaultImpls;->onSwipeFromBottom(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;)V

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
