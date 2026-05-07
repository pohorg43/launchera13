.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;
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

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-static {v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->access$200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)I

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "GesturesGuide"

    const-string v1, "SideSlipGesturesGuideMotionEvent"

    const-string/jumbo v2, "swipe fail, time out"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->access$202(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;I)I

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-static {v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->access$302(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;Z)Z

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent$2;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;Landroid/view/MotionEvent;)V

    :cond_26
    return-void
.end method
