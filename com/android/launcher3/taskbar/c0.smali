.class public final synthetic Lcom/android/launcher3/taskbar/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;F)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/c0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/taskbar/c0;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/c0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/taskbar/c0;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;F)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/taskbar/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/c0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/taskbar/c0;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher3/taskbar/c0;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/c0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;

    iget p0, p0, Lcom/android/launcher3/taskbar/c0;->c:F

    invoke-static {v0, p0}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->a(Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;F)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/c0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget p0, p0, Lcom/android/launcher3/taskbar/c0;->c:F

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->f(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;F)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/launcher3/taskbar/c0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;

    iget p0, p0, Lcom/android/launcher3/taskbar/c0;->c:F

    invoke-static {v0, p0}, Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;->c(Lcom/oplus/quickstep/anim/OplusSpringObjectAnimator;F)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
