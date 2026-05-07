.class Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;

    invoke-static {p0, p1}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;->access$000(Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;Landroid/view/MotionEvent;)V

    return-void
.end method
