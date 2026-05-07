.class Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarKeyguardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->access$002(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->access$100(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 p1, 0x0

    const p2, 0x77ffff

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method
