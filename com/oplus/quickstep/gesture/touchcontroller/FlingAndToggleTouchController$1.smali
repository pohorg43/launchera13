.class Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->onDragEnd(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController$1;->this$0:Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController$1;->this$0:Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->access$000(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;)Lcom/android/launcher3/LauncherState;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;->access$100(Lcom/oplus/quickstep/gesture/touchcontroller/FlingAndToggleTouchController;Lcom/android/launcher3/LauncherState;Z)V

    return-void
.end method
