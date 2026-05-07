.class public final synthetic Lcom/android/launcher3/taskbar/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/taskbar/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/d0;->b:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/taskbar/d0;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_11

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->b:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->c(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F

    move-result p0

    :goto_c
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->b:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->b(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)F

    move-result p0

    goto :goto_c

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
