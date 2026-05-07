.class Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewDrawListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field public final synthetic this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onDraw()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-static {v0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->access$100(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->mHandler:Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker$MyViewDrawListener;->this$0:Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;

    invoke-static {p0}, Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;->access$100(Lcom/android/launcher3/graphics/BitmapCreationCheck$MyTracker;)Ljava/lang/ThreadLocal;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
