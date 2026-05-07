.class Lcom/android/quickstep/RecentsAnimationDeviceState$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$3;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$3;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->access$102(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)Z

    return-void
.end method

.method public onActivityUnpinned()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$3;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->access$102(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)Z

    return-void
.end method
