.class public final synthetic Lcom/android/wm/shell/pip/phone/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/h0;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/h0;->a:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$1;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
