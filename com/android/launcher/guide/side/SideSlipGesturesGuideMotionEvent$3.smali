.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->resetMotionEventState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionPauseChanged(Z)V
    .registers 3

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->access$002(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;Z)Z

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)Lcom/android/quickstep/util/MotionPauseDetector;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    :cond_12
    return-void
.end method

.method public onMotionPauseDetected()V
    .registers 1

    return-void
.end method
